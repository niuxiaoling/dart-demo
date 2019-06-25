void main(){
  num a = 20; // num  型可以指定浮点和整型  
  double b = 10.5;
  // b = 11.11;  // ❌ 具体的类型不能再赋予为浮点型了
  
  print(a + b); // 30.5
  print(a - b); // 9.5
  print(a * b); // 210.0
  print(a / b); //1.9047619047619047
  print(a ~/b); //1
  print(a % b); //9.5
  print(b.isNaN);
  int c = -100;
  print(c.abs());
  double d = 12.5;
  print(d.floor());
  print(d.round());
}