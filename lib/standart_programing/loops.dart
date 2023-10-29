void main() {
  for (var i = 1; i < 4; i++) {
    print('Döngü 1 : $i');
  }
  print('--');

  // 10 ile 20 arasında 5 er artış
  for (var i = 10; i < 21; i += 5) {
    print('Döngü 2 : $i');
  }
  print('--');
  // 20 ile 10 arasında 5 er artış
  for (var i = 20; i > 9; i -= 5) {
    print('Döngü 3 : $i');
  }
  print('--');

  var sayac = 1;
  while (sayac < 4) {
    print('Döngü 4 : $sayac');
    sayac++;
  }
  print('--');

  for (var i = 1; i < 6; i++) {
    if (i == 4) {
      break;
    }
    print('Döngü 5 : $i');
  }
  print('--');

  for (var i = 1; i < 6; i++) {
    if (i == 2) {
      continue;
    }

    print('Döngü 6 : $i');
  }
  print('--');
}
