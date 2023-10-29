void main() {
  int a = 40;
  int b = 50;

  int x = 90;
  int y = 80;

  print('a == b   : ${a == b}');
  print('a != b   : ${a != b}'); // -    != true'yu false, false'u true yapar.
  print('a > b    : ${a > b}');
  print('a >= b   : ${a >= b}');
  print('a < b    : ${a < b}');
  print('a =< b   : ${a <= b}');

  /* 
    OR kullanımı : ||
    t+t = t
    t+f = t
    f+t = t
    f+f = f
  */
  print('a > b || x > y     : ${a > b || x > y}');

  /*
    AND kullanımı : &&
    t+t = t
    t+f = f
    f+t = f
    f+f = f
  */
  print('a > b && x > y     : ${a > b && x > y}');
}
