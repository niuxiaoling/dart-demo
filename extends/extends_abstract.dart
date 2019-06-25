import 'dart:io';

void main(){
  var d = new Child();
  d.run();
}
abstract class Person{
  void run();
}
class Child extends Person{
  @override
  void run() {
     print('run...');
  }
}