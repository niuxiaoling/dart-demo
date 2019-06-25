void main(){
  var bob = new Person('bob', 18,'');
  var alice = Person.getName('alice','');
  print(bob.work());
  var a = Person.mapValue({'name':'xoaling','age':19});
}
class Person{
  String name;
  int age;
  final String gender;
  // Person(this.name,this.age,this.gender);
  Person(String name ,int age,this.gender){
    this.name = name;
    this.age = age;
  }
  Person.mapValue(Map map): name= map['name'],gender = map['gender']{
    this.age = map['age'];
  }
  Person.getName(this.name,this.gender);
  String work(){
    return '$name is $age,but he is working hard,he is a boy';
  }
}