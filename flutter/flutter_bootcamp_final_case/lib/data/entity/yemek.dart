class YemekModel {
  final String yemek_id;
  final String yemek_adi;
  final String yemek_resim_adi;
  final String yemek_fiyat;

  YemekModel(
      {required this.yemek_id,
      required this.yemek_adi,
      required this.yemek_resim_adi,
      required this.yemek_fiyat});

  factory YemekModel.fromJson(Map<String, dynamic> json) {
    return YemekModel(
        yemek_id: json["yemek_id"] as String,
        yemek_adi: json["yemek_adi"] as String,
        yemek_resim_adi: json["yemek_resim_adi"] as String,
        yemek_fiyat: json["yemek_fiyat"] as String);
  }
}
