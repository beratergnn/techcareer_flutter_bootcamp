void main() {
  // Tanımlama
  var plakalar = [34, 53, 61];
  var meyveler = <String>[];

  // Veri ekleme
  meyveler.add('Muz');
  meyveler.add('Kiraz');
  meyveler.add('Elma');
  print(meyveler);

  // Güncelle
  meyveler[1] = 'Yeni Kiraz';

  // Ekleme
  meyveler.insert(1, 'Portakal'); // Kaydırarak ekler.
  print(meyveler);

  // Veri okuma
  String meyve = meyveler[1];
  print(meyve);

  // List üzerinde gezinme
  for (var meyve in meyveler) {
    print(meyve);
  }

  for (var i = 0; i < meyveler.length; i++) {
    print('Meyve: ${meyveler[i]}');
  }

  print('Boş kontrol: ${meyveler.isEmpty}');
  print('Boş kontrol: ${meyveler.isNotEmpty}');
  print('İçeriyor mu: ${meyveler.contains('Muz')}');

  // Ters çevirme
  var liste = meyveler.reversed.toList();
  print(liste);

  // İçeriğe göre sıralama
  meyveler.sort();
  print(meyveler);

  // Eleman silme indexe göre
  meyveler.removeAt(1);
  print(meyveler);

  // Listeyi temizleme
  meyveler.clear();
  print(meyveler);
}
