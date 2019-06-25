void main(){
  var person = new Person();
  person.age= 18;
  person.name = 'xiaoing';
  person.work();
  print(person.name);
  print(person.address);
}
class Person{
  String name;
  int age;
  final String address=null;
  void work(){
    print('name=$name,age=$age,she is beautiful girl');
  }
}