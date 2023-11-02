void main() {
  // Derleme Zamanı Hatası
  int x = 10; // ; koymazsan derlemez

  // Çalışma Zamanı Hatası
  var liste = <String>[];
  liste.add("Ali");
  liste.add("Ece");
  String isim = liste[0];
  print("Gelen isim : $isim");

  // Eğer olmayan indexi okumaya çalışırsan çalışma zamanı hatası alırız
  String isim2 = liste[5];
  print("Gelen isim : $isim2"); // gibi

  // Nasıl kontrol edeceğiz?
  // try-catch
  try {
    String isim2 = liste[5];
    print("Gelen isim : $isim2");
  } catch (e) {
    print("Listenin boyutunu aştınız");
  }
}
