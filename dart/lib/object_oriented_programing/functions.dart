class Functions {
  // void : çağırıldığı yere bir değer iletmeyen.
  void sayHello() {
    String result = 'Hello World!';
    print(result);
  }

  // return : çağırıldığı yere bir değer ileten.
  String sayHello1() {
    String result = 'Hello World!';
    return result;
  }

  void sayHello2(String name) {
    String result = 'Hello $name!';
    print(result);
  }

  int plus(int s1, int s2) {
    return s1 + s2;
  }
}
