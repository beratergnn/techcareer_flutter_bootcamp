import 'dart:convert';

import 'package:contact_bloc_pattern/data/entity/sepet.dart';
import 'package:contact_bloc_pattern/data/entity/sepet_response.dart';
import 'package:contact_bloc_pattern/data/entity/yemek.dart';
import 'package:contact_bloc_pattern/data/entity/yemek_response.dart';
import 'package:dio/dio.dart';

class YemekDaoRepository {
  var baseUrl = "http://kasimadalan.pe.hu/yemekler/";
  bool exchange = true;
  List<YemekModel> parseYemekResponse(String response) {
    return YemekResponse.fromJson(jsonDecode(response)).yemeks;
  }

  List<SepetModel> parseSepetResponse(String response) {
    return SepetResponse.fromJson(jsonDecode(response)).sepets;
  }

  Future<List<YemekModel>> getSiraliYemeks() async {
    var url = "${baseUrl}tumYemekleriGetir.php";
    var response = await Dio().get(url);

    List<YemekModel> yemekler = parseYemekResponse(response.data.toString());

    if (exchange) {
      exchange = !exchange;
      yemekler.sort((a, b) =>
          int.parse(a.yemek_fiyat).compareTo(int.parse(b.yemek_fiyat)));
    } else {
      exchange = !exchange;
      yemekler.sort((a, b) =>
          int.parse(b.yemek_fiyat).compareTo(int.parse(a.yemek_fiyat)));
    }

    return yemekler;
  }

  Future<List<YemekModel>> getYemeks() async {
    var url = "${baseUrl}tumYemekleriGetir.php";
    var response = await Dio().get(url);

    return parseYemekResponse(response.data.toString());
  }

  Future<void> sepeteEkle(
    String yemek_adi,
    String yemek_resim_adi,
    int yemek_fiyat,
    int yemek_siparis_adet,
    String kullanici_adi,
  ) async {
    // Eklemeden önce git sepeti bir kontrol et tüm sepete bir bak
    var kontrolUrl = "${baseUrl}sepettekiYemekleriGetir.php";
    var kontrolData = {
      "kullanici_adi": kullanici_adi,
    };
    var kontrolResponse =
        await Dio().post(kontrolUrl, data: FormData.fromMap(kontrolData));
    List<SepetModel> sepets =
        parseSepetResponse(kontrolResponse.data.toString());

    int oncekiAdet = 0;
    String silinecekSepetYemekId = "";
    for (var sepet in sepets) {
      if (sepet.yemek_adi == yemek_adi) {
        silinecekSepetYemekId = sepet.sepet_yemek_id;
        oncekiAdet = int.parse(sepet.yemek_siparis_adet);

        if (oncekiAdet > 0) {
          var silUrl = "${baseUrl}sepettenYemekSil.php";
          var silData = {
            "sepet_yemek_id": silinecekSepetYemekId,
            "kullanici_adi": kullanici_adi,
          };
          var silResponse =
              await Dio().post(silUrl, data: FormData.fromMap(silData));
        }
      }
    }

    var sonAdet = yemek_siparis_adet + oncekiAdet;
    var url = "${baseUrl}sepeteYemekEkle.php";
    var data = {
      "yemek_adi": yemek_adi,
      "yemek_resim_adi": yemek_resim_adi,
      "yemek_fiyat": yemek_fiyat,
      "yemek_siparis_adet": sonAdet,
      "kullanici_adi": kullanici_adi,
    };
    var response = await Dio().post(url, data: FormData.fromMap(data));
    print("Yemek eklendi mi? -> ${response.statusCode}");
  }

  Future<List<SepetModel>> getSepets(
    String kullanici_adi,
  ) async {
    var url = "${baseUrl}sepettekiYemekleriGetir.php";
    var data = {
      "kullanici_adi": kullanici_adi,
    };
    var response = await Dio().post(url, data: FormData.fromMap(data));
    print("Yemek eklendi mi? -> ${response.statusCode}");

    if (response != null && response.statusCode == 200) {
      return parseSepetResponse(response.data.toString());
    } else {
      return [];
    }
  }

  Future<int> getSepetsTotalPrice(
    String kullanici_adi,
  ) async {
    var url = "${baseUrl}sepettekiYemekleriGetir.php";
    var data = {
      "kullanici_adi": kullanici_adi,
    };
    var response = await Dio().post(url, data: FormData.fromMap(data));
    print("Yemek eklendi mi? -> ${response.statusCode}");

    List<SepetModel> sepetler = parseSepetResponse(response.data.toString());
    int toplamFiyat = 0;
    for (var sepet in sepetler) {
      int siparisAdet = int.parse(sepet.yemek_siparis_adet);
      int yemekFiyat = int.parse(sepet.yemek_fiyat);
      toplamFiyat += siparisAdet * yemekFiyat;
    }

    return toplamFiyat;
  }

  Future<void> deleteYemek(int sepet_yemek_id, String kullanici_adi) async {
    var url = "${baseUrl}sepettenYemekSil.php";
    var data = {
      "sepet_yemek_id": sepet_yemek_id,
      "kullanici_adi": kullanici_adi,
    };
    var response = await Dio().post(url, data: FormData.fromMap(data));

    print('Yemek Sil :  ${response.data.toString()}');
  }

  Future<List<YemekModel>> searchYemeks(String value) async {
    var url = "${baseUrl}tumYemekleriGetir.php";
    var response = await Dio().get(url);

    List<YemekModel> allYemeks = parseYemekResponse(response.data.toString());

    List<YemekModel> matchingYemeks = allYemeks
        .where((yemek) =>
            yemek.yemek_adi.toLowerCase().contains(value.toLowerCase()))
        .toList();

    return matchingYemeks;
  }
}
