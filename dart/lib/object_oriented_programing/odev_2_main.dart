import 'package:techcareer_flutter_bootcamp/object_oriented_programing/odev_2.dart';

void main() {
  var odev2 = Odev2();

  print('10 km kaç mill             : ${odev2.kmToMill(10)}');
  print(
      '4*5 lik dikdörtgen alanı     : ${odev2.rectangleAreaCalculator(4, 5)}');
  print('5 farktöriyel kaç          : ${odev2.factorialCalculator(5)}');
  print('Tenekede kaç tane e var    : ${odev2.eCalculate('Teneke')} ');
  print('Dörtgenin iç açısı kaçtır  : ${odev2.innerAngleCalculator(4)}');
  print('20 gün 9 saat maaş         : ${odev2.salaryCalculator(20, 7)}');
  print('5 saat otopark ücret       : ${odev2.parkingFeeCalculating(5)}');
}
