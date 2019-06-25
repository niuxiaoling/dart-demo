import 'dart:ffi';

void main(){
  var teacher = new Teacher();
  var student = new Students();
  teacher.run();
  student.run();
}

abstract class Person{
  // String name;
  void run();
}

class Students extends Person{
  @override
  run() {
    print('student run....');
  }

}

class Teacher  extends Person{
  @override
  run() {
    print('teacther runing...');
  }

}
