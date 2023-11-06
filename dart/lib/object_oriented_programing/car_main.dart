import 'package:techcareer_flutter_bootcamp/object_oriented_programing/car_model.dart';

void main() {
  // Nesne Oluşturma
  var bmw = Car(color: 'Mavi', speed: 100, isWorking: true);
  // Değer Okuma
  bmw.getInfo();
  bmw.speed = 50;
  bmw.getInfo();

  bmw.stopIt();
  bmw.getInfo();
  bmw.runIt();
  bmw.getInfo();
  bmw.speedUp(50);
  bmw.getInfo();
  bmw.slowDown(20);
  bmw.getInfo();

  var sahin = Car(color: 'Beyaz', speed: 0, isWorking: false);
  sahin.getInfo();
  sahin.runIt();
  sahin.getInfo();
  sahin.speedUp(50);
  sahin.getInfo();
  sahin.slowDown(20);
  sahin.getInfo();
}
