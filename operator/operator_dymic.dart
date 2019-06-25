void main(){
  num a = 10;
  num b = 20;
  print(a == b);
  print(a > b);
  print(a < b);
  print(a <= b);
  print(a >= b);
  print(a != b);

  String str1 ='123';
  String str2 = '123';
  print(str1 == str2);

  bool isTrue = true;
  print(!isTrue);
  bool isT = false;
  print(isTrue && isT);
  print(isTrue || isT);

  int m;
  m ??= 10;
  print(m);

  int gen = 0;
  String aa = gen == 0 ? 'aa == $gen':'bb=$gen';
  print(aa);
  String cc;
  String cd ='dart';
  String c = cc ?? cd;
  print(c);

}