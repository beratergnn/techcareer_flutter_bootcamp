import 'dart:collection';

void main() {
  // Tanımlama
  var plakalar = HashSet.from([16, 23, 53]);
  var meyveler = HashSet<String>();

  // Değer eklem
  meyveler.add('Elma');
  meyveler.add('Muz');
  meyveler.add('Kiraz');
  print(meyveler); // Eklenen sıra ile print etmez karıştırır

  meyveler.add('Elma'); // Aynı elemanı tekrar eklemez hata da vermez!
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  // İçeriğinde gezinme
  for (var meyve in meyveler) {
    print('Sonuç: ${meyve}');
  }

  for (var i = 0; i < meyveler.length; i++) {
    print('$i - > ${meyveler.elementAt(i)}');
  }

  meyveler.remove('Muz'); // İçerik tabanlı
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}
