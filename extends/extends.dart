void main(){
  var student = new Student();
  student.study();
  student.name ='aa';
  student.age =10;
  student.run();
  print(student.isAudit);
}

class Person{
  String name;
  int age;
  bool get isAudit => age>18;
  void run(){
    print('run,,');
  }
}

class Student extends Person{
  void study(){
    super.run();
    print('study....');
  }
  @override    // 重写父类方法
  bool get isAudit => age>=10;
}