void main() async {
  print("Verilerin alınması bekleniyor...");
  var veri = await veritabanindanVeriAl();
  print("Alınan Yeri : $veri");
}

Future<String> veritabanindanVeriAl() async {
  for (var i = 1; i < 6; i++) {
    //1,2,3,4,5
    Future.delayed(
        Duration(seconds: i), () => print("Veri Miktarı : %${i * 20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => 'MERHABA');
}
