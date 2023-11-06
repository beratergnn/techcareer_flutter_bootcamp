import 'package:techcareer_flutter_bootcamp/object_oriented_programing/functions.dart';

void main() {
  var functions = Functions();
  functions.sayHello();

  String result = functions.sayHello1();
  print(result);

  functions.sayHello2('Berhat');

  print(functions.plus(10, 20));
}
