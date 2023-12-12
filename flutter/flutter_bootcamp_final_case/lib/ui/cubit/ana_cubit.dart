// Ana sayfa arayüze veri bekleyen bir sayfa
// silme arama ve listeleme hepsinde arayüzde bir kişier listesi arayüzde beklenicek
import 'package:contact_bloc_pattern/data/entity/yemek.dart';
import 'package:contact_bloc_pattern/data/repo/yemek_siparis_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaCubit extends Cubit<List<YemekModel>> {
  AnaCubit() : super(<YemekModel>[]);

  var kRepo = YemekDaoRepository();
  Future<void> getYemeks() async {
    var list = await kRepo.getYemeks();
    emit(list);
  }

  Future<void> searchYemeks(String value) async {
    var list = await kRepo.searchYemeks(value);
    emit(list);
  }

  Future<void> getSiraliYemeks() async {
    var list = await kRepo.getSiraliYemeks();
    emit(list);
  }

  Future<void> sepeteEkle(
    String yemek_adi,
    String yemek_resim_adi,
    int yemek_fiyat,
    int yemek_siparis_adet,
    String kullanici_adi,
  ) async {
    await kRepo.sepeteEkle(yemek_adi, yemek_resim_adi, yemek_fiyat,
        yemek_siparis_adet, kullanici_adi);
  }
}
