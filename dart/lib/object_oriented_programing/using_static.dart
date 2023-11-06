import 'package:techcareer_flutter_bootcamp/object_oriented_programing/class_a.dart';

void main() {
  var a = Aclass();

  // Standart kullanım.
  print(a.degisken);
  a.metod();

  // İsimsiz nesne kullanımı.
  print(Aclass().degisken);
  Aclass().metod();

  // Static kullanımı, Kotlin(companian object)
  print(Aclass.degisken2);
  Aclass.metod1();
}
