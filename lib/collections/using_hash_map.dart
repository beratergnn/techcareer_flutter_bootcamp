import 'dart:collection';

void main() {
  // Tanımlama
  var sayilar = {'Bir': 1, 'İki': 2};
  var iller = HashMap<int, String>();

  // Değer atama
  iller[16] = 'BURSA';
  iller[34] = 'İSTANBUl';
  print(iller);

  // Güncelleme
  iller[16] = 'YENİ BURSA';

  // Veri okuma
  String? il =
      iller[34]; //34 keyli bir değer olmayabilir ondan nullable kontrolü
  if (il != null) {
    print(il);
  }

  print('Boyut: ${iller.length}');
  print('Boş kontrol: ${iller.isEmpty}');
  print('İçeriyor mu: ${iller.containsValue('İSTANBUL')}');

  // İçeriğinde gezinme
  var keys = iller.keys;
  for (var a in keys) {
    print('$a -> ${iller[a]}');
  }

  iller.remove(16);
  print(iller);

  iller.clear();
  print(iller);
}
