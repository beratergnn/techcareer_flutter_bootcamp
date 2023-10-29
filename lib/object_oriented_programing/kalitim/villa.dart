// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/kalitim/house.dart';

class Villa extends House {
  bool garage;
  Villa({
    required this.garage,
    required int windowCount,
  }) : super(windowCount: windowCount);
}
