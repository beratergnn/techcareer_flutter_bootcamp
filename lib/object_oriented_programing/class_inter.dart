import 'package:techcareer_flutter_bootcamp/object_oriented_programing/my_interface.dart';

// İmplemente ettiği interfacein metodlarını ve değişkenlerini override etmelidir.
class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    // TODO: implement metod1
    print('metod1 çalıştı!');
  }

  @override
  String metod2() {
    // TODO: implement metod2
    return 'metod1 çalıştı!';
  }
}
