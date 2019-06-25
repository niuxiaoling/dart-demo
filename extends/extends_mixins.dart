void main(List<String> args) {
  var teacher = new Teacher();
  teacher.study(); // teacher 同时拥有3个类的方法
}

class Student1{
  void study(){
    print('student1 study...');
  }
}
class Student2{
   void run(){
    print('student2 study...');
  }
}
class Student3{
   void singer(){
    print('student3 study...');
  }
}
// 若需要Teacher同时拥有上面3个学生的类，用继承
class Teacher extends Student1 with Student2,Student3{

}