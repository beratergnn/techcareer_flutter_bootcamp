import 'package:contact_bloc_pattern/data/entity/sepet.dart';

class SepetResponse {
  final List<SepetModel> sepets;
  final int success;

  SepetResponse({required this.sepets, required this.success});

  factory SepetResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["sepet_yemekler"] as List;
    int success = json["success"] as int;
    List<SepetModel> sepets =
        jsonArray.map((e) => SepetModel.fromJson(e)).toList();

    return SepetResponse(sepets: sepets, success: success);
  }
}
