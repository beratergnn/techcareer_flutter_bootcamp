class Odev2 {
  // 1 - Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız.
  double kmToMill(double km) {
    if (km > 0) {
      return (km * 0.621);
    } else {
      return 0;
    }
  }

  // 2 - Kenarları parametro olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yazınız.
  int rectangleAreaCalculator(int kisaK, int uzunK) {
    if (kisaK > 0 && uzunK > 0) {
      return kisaK * uzunK;
    } else {
      return 0;
    }
  }

  // 3 - Parametro olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.
  int factorialCalculator(int sayi) {
    if (sayi == 0) {
      return 1;
    } else {
      return sayi * factorialCalculator(sayi - 1);
    }
  }

  // 4 - Parametro olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren bir motod yazınız.
  int eCalculate(String kelime) {
    int adet = 0;
    kelime = kelime.toLowerCase();
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i].contains("e")) {
        adet++;
      }
    }
    return adet;
  }

  // 5 - Parametre olarak girilen kenar sayısına gçre her bir iç açıyı hesaplayıp sonucu geri göndüren metodu yazın.
  double innerAngleCalculator(int kenarSayisi) {
    if (kenarSayisi >= 3) {
      return (((kenarSayisi - 2) * 180) / kenarSayisi);
    }
    return 0;
  }

  // 6 - Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
  double salaryCalculator(int kacGunCalisti, int gundeKacSaat) {
    if (kacGunCalisti > 0 && gundeKacSaat > 0) {
      if (gundeKacSaat <= 8) {
        int mesaiSaati = 0;
        int mesaisizSaat = 0;
        if (kacGunCalisti * gundeKacSaat >= 150) {
          mesaiSaati = (kacGunCalisti * gundeKacSaat) - 150;
          mesaisizSaat = (kacGunCalisti * gundeKacSaat) - mesaiSaati;
        } else {
          mesaisizSaat = kacGunCalisti * gundeKacSaat;
        }

        return (mesaisizSaat * 40) + (mesaiSaati * 80);
      } else {
        print("Bir günde 8 saatten fazla çalışmış olamazsınız.");
        return 0;
      }
    } else {
      print("Çalışma günü veya saatiniz 0 olamaz.");
      return 0;
    }
  }

  // 7 - Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
  int parkingFeeCalculating(int kacSaatKaldi) {
    if (kacSaatKaldi > 0) {
      if (kacSaatKaldi > 1) {
        return 50 + ((kacSaatKaldi - 1) * 10);
      } else {
        return 50;
      }
    } else {
      print("0 dan büyük bir sayi giriniz!");
      return 0;
    }
  }
}
