import 'package:techcareer_flutter_bootcamp/object_oriented_programing/overide/animal.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/overide/cat.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/overide/dog.dart';
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/overide/mammal.dart';

void main() {
  var animal = Animal();
  var mammal = Mammal();
  var cat = Cat();
  var dog = Dog();

  animal.sesCikar(); // Katılım yok
  mammal.sesCikar(); // Katılım var
  cat.sesCikar(); // Katılım var
  dog.sesCikar(); // Katılım var
}
