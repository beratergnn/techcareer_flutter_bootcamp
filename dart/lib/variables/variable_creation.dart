import 'package:flutter/material.dart';

void main() {
  var studentName = 'Berhat';
  var studentAge = 23;
  var studentSize = 1.81;
  var studentInitial = 'B';
  var studentIsContinue = true;

  print(studentName);
  print(studentAge);
  print(studentSize);
  print(studentInitial);
  print(studentIsContinue);

  int product_id = 3416;
  String product_name = 'Kol Saati';
  int product_count = 100;
  double product_price = 149.99;
  String product_supplier = 'Rolex';

  print('Ürün Id        :$product_id');
  print('Ürün Adı       :$product_name');
  print('Ürün Adeti     :$product_count');
  print('Ürün Fiyatı    :$product_price \$');
  print('Ürün Tedarikçi :$product_supplier');

  int a = 10;
  int b = 20;
  print('$a x $b = ${a * b}');

  // * - Sabitler

  // final and const
  // Java'da final, Swift'de let, Kotlin'de val
  // Eğer bir sayı sabit değil ise değeri değiştirilebilir.

  int sayi = 60;
  print(sayi);
  sayi = 140;
  print(sayi);

  // Örnekte olduğu gibi ama eğer değişkeni final olarak tanımlar isek.
  // Final kodlama çalıştığında hafızada oluşur.
  final int numara = 70;
  print(numara);
  // numara = 80;  hata verir.

  const double x = 45.7;
  // const genel olarak görsel nesnelerde tanımlanır final ise değişkenlerde kullanılır.
  // const da ise değişkeni tanımlarken hafızada oluşur.

  // sabitler neden önemlidir çünkü bellek kullanımı için sabitlerin alanı bellidir ve ekstra bir alan kullanılamaz.

  // * - Tür Dönüşümü
  // Neden gereklidir arayüzden alınan veriler string olarak alınır ve arayüzden string olarak gösterilir.

  // 1 - Sayılsaldan sayısala dönüşüm;
  int i = 78;
  double d = 43.85;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();

  print('1 - Sayılsaldan sayısala dönüşüm');
  print(sonuc1);
  print(sonuc2);

  // 2 - Sayısaldan metnine dönüşüm;
  String sonuc3 = i.toString(); // '78'
  String sonuc4 = d.toString(); // '43.85'

  print('2 - Sayısaldan metnine dönüşüm');
  print(sonuc3);
  print(sonuc4);

  // 3 - Metinden sayısala;
  String yazi1 = '67';
  String yazi2 = '38.85';

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);

  print('3 - Metinden sayısala dönüşüm');
  print(sonuc5);
  print(sonuc6);
}
