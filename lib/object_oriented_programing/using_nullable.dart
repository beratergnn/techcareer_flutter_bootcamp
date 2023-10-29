void main() {
  // Nullable - Null Safety - Swift(Optional)
  String str = 'Merhaba';
  String? mesaj = null; // Swift(nill)

  // Yöntem 1
  print('Yöntem 1 : ${mesaj?.toUpperCase()}');
  // - ? koymasaydık zaten aktif bir hata alırız çünkü bu değişken null ise yoUppperCase uygulanamaz.
  // biz bunu koyarak bunun farkında olduğuuzu belirtiyoruz ve eğer değişken null gelirse uygulamanın çökmesini engelliyoruz.

  // Yöntem 2
  print('Yöntem 2 : ${mesaj!.toUpperCase()}');
  // Burada ! kullanımı ile uygulama çöker çünkü ! koymak ben bu değişkenin null olmiyacağına eminim demektir ve null gelirse sen uygulamayı çökertebilirsin demektir.

  // Yöntem 3
  if (mesaj != null) {
    print('Yöntem 3 : ${mesaj!.toUpperCase()}');
  } else {
    print('Mesaj nulldur');
  }
}
