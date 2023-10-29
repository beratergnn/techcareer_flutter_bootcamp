void main() {
  int age = 19;
  String name = 'Berhat';

  if (age >= 18) {
    print('Reşitsiniz!');
  } else {
    print('Reşit değilsiniz!');
  }

  if (name == 'Berhat') {
    print('Merhaba Berhat!');
  } else if (name == 'Mehmet') {
    print('Merhaba Mehmet!');
  } else {
    print('Tanınmayan kişi!');
  }

  String dbName = 'admin';
  int s = 123456;

  if (dbName == 'admin' && s == 123456) {
    print('Hoşgeldin!');
  } else {
    print('Kullanıcı adı veya şifre yanlış!');
  }

  int sayi = 10;
  if (sayi == 9 || sayi == 10) {
    print("Sayı 9 veya 10'dur!");
  } else {
    print("Sayı 9 veya 10 değildir!");
  }

  // Kotlin'de When!
  int gun = 1;
  switch (gun) {
    case 1:
      print('Bugun Pazartesi!');
      break;
    case 2:
      print('Bugun Salı!');
      break;
    case 3:
      print('Bugun Çarşamba!');
      break;
    case 4:
      print('Bugun Perşembe!');
      break;
    case 5:
      print('Bugun Cuma!');
      break;
    case 6:
      print('Bugun Cumartesi!');
      break;
    case 7:
      print('Bugun Pazar!');
      break;

    default:
      print('Bugun tanımlanamadı!');
  }

  //! Swtich if den daha performanslı çalışır.
}
