void main(){
  Student student = Student('tom','girl');
  // Student student1 = Student.withName('tom');

}
class Person{
  String name;
  Person(this.name){
    print('父类的构造方法+name$name');
  }
  Person.widthName(this.name){
    print('父类的命名方法 +name=$name');
  }
}
class Student extends Person{
  int age;
  final String gender;
  // Student(String name) : super(name);

  Student(String name,String gender):  gender = gender,super.widthName(name);

}