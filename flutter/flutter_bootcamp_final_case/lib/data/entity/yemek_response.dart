import 'package:contact_bloc_pattern/data/entity/yemek.dart';

class YemekResponse {
  final List<YemekModel> yemeks;
  final int success;

  YemekResponse({required this.yemeks, required this.success});

  factory YemekResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["yemekler"] as List;

    int success = json["success"] as int;
    List<YemekModel> yemeks =
        jsonArray.map((e) => YemekModel.fromJson(e)).toList();

    return YemekResponse(yemeks: yemeks, success: success);
  }
}
