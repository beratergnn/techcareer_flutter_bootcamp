// Kişi kayıtı alıcak veritabanına bir kayıt yapıcak ama arayüze bir veri getirmicek
// yani emit yok dinleme yok
import 'package:contact_bloc_pattern/data/entity/sepet.dart';
import 'package:contact_bloc_pattern/data/repo/yemek_siparis_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SepetCubit extends Cubit<List<SepetModel>> {
  SepetCubit() : super(<SepetModel>[]);

  var kRepo = YemekDaoRepository();

  Future<void> getSepets(
    String kullanici_adi,
  ) async {
    var list = await kRepo.getSepets(kullanici_adi);
    emit(list);
  }

  Future<void> deleteYemek(int sepet_yemek_id, String kullanici_adi) async {
    await kRepo.deleteYemek(sepet_yemek_id, kullanici_adi);

    var list = await kRepo.getSepets(kullanici_adi);
    emit(list);
  }
}
