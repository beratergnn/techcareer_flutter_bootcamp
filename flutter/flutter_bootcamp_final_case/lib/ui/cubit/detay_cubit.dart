import 'package:contact_bloc_pattern/data/repo/yemek_siparis_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageCubit extends Cubit<int> {
  DetailPageCubit() : super(1);

  var kRapo = YemekDaoRepository();

  Future<void> sepeteEkle(
    String yemek_adi,
    String yemek_resim_adi,
    int yemek_fiyat,
    int yemek_siparis_adet,
    String kullanici_adi,
  ) async {
    await kRapo.sepeteEkle(yemek_adi, yemek_resim_adi, yemek_fiyat,
        yemek_siparis_adet, kullanici_adi);
  }

  void increment() {
    if (state < 10) {
      emit(state + 1);
    }
  }

  void decrement() {
    if (state > 1) {
      emit(state - 1);
    }
  }
}
