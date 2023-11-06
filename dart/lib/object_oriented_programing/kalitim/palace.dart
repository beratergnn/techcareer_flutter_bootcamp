// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:techcareer_flutter_bootcamp/object_oriented_programing/kalitim/house.dart';

class Palace extends House {
  int towerCount;
  Palace({
    required this.towerCount,
    required int windowCount,
  }) : super(windowCount: windowCount);
}
