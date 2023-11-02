import 'package:techcareer_flutter_bootcamp/collections/product_model.dart';

void main() {
  var p1 = Product(pId: 1, pName: 'Bilgisayar', pPrice: 34000);
  var p2 = Product(pId: 2, pName: 'Tv', pPrice: 18000);
  var p3 = Product(pId: 3, pName: 'Saat', pPrice: 26000);

  var pList = <Product>[];
  pList.add(p1);
  pList.add(p2);
  pList.add(p3);

  for (var p in pList) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');

  print('----- Fiyat: Artan -----');
  Comparator<Product> s1 = (x, y) => x.pPrice.compareTo(y.pPrice);
  pList.sort(s1);
  for (var p in pList) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');

  print('----- Fiyat: Azalan -----');
  Comparator<Product> s2 = (x, y) => y.pPrice.compareTo(x.pPrice);
  pList.sort(s2);
  for (var p in pList) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');

  print('----- Ad: Artan -----');
  Comparator<Product> s3 = (x, y) => x.pName.compareTo(y.pName);
  pList.sort(s3);
  for (var p in pList) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');

  print('----- Ad: Azalan -----');
  Comparator<Product> s4 = (x, y) => y.pName.compareTo(x.pName);
  pList.sort(s4);
  for (var p in pList) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');
  print('-');
  print('--');

  print('----- Filtreleme 1 -----');
  Iterable<Product> f1 = pList.where((element) {
    return element.pPrice > 25000;
  });
  var fListe = f1.toList();
  for (var p in fListe) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');
  print('-');
  print('--');

  print('----- Filtreleme 2 -----');
  Iterable<Product> f2 = pList.where((element) {
    return element.pName.contains('B');
  });
  var fListe2 = f2.toList();
  for (var p in fListe2) {
    print('Id     :${p.pId} - Name   :${p.pName} - Price :${p.pPrice}');
  }
  print('');
  print('-');
  print('--');
}
