void main(){
  var a = new Type<int>();
  a.input(1);
  var b = new Type<String>();
  b.input('sss');

  var p1 = new Person();
  p1.input<int>(1);
  p1.input<String>('sss');
}

class Type<T>{
  T element;
  void input(T element){
    this.element = element;
    print(this.element);
  }
}
class Person{
  void input<T>(T element){
    if(T == int){
      print('只能输入数字');
    }
    if(T == String){
      print('只能输入字符串');
    }
  }
}
