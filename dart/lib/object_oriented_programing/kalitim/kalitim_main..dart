import 'package:techcareer_flutter_bootcamp/object_oriented_programing/kalitim/house.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/kalitim/palace.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/kalitim/villa.dart';

void main() {
  var topkapiSarayi = Palace(towerCount: 10, windowCount: 200);
  print(topkapiSarayi.towerCount);
  print(topkapiSarayi.windowCount);

  var villa = Villa(garage: true, windowCount: 40);
  print(villa.garage);
  print(villa.windowCount);

  // Type Control - Upcasting Downcasting

  if (topkapiSarayi is Palace) {
    // Java(instaceOf)
    print('Saraydır!');
  } else {
    print('Saray değildir!');
  }

  // Upcasting Subclass -> Superclass
  var saray = Palace(towerCount: 3, windowCount: 80);
  House ev = saray;

  // Downcasting Superclass -> Subclass
  var ev2 = House(windowCount: 14);
  Palace s = ev2 as Palace;
}
