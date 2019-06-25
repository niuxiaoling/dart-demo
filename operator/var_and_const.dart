
void main(){
  var a;
  print(a);  //null   变量为空时为null

  a = '1111' ;
  print(a);  // 1111

  a = 123;
  print(a);  //123

  final b =  '1222';  // final只能声明一次变量

  print(b);  

  const c = 1;  // 常量
  // c = 123;  // 错误
  print(c);
}
