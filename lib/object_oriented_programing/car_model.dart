class Car {
  String color;
  int speed;
  bool isWorking;

  Car({required this.color, required this.speed, required this.isWorking});

  void getInfo() {
    print('-----');
    print('Renk         :${color}');
    print('Hız          :${speed}');
    print('Çalışıyor mu :${isWorking}');
  }

  void stopIt() {
    // side effect: metodun sınıfın özelliğini değiştirmesi
    speed = 0;
    isWorking = false;
  }

  void runIt() {
    speed = 5;
    isWorking = true;
  }

  void speedUp(int km) {
    speed += km;
  }

  void slowDown(int km) {
    speed -= km;
  }
}
