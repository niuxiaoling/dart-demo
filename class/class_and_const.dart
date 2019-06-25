void main(){
  var a = Person('xiaoling',19);
}
class Person{
  final String name;
  final int age;
  const Person(this.name,this.age);
  void work(){
    print('is working');
  }

}