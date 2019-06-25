void main(List<String> args) {
  var person1 = new Person(19);
  var person2 = new Person(30);
  print(person1>person2);
  print(person1['age']);
  print(person1 == person2);
}

class Person{
  int age;
  Person(this.age);

  bool operator >(person){
    return this.age > person.age;
  }

  int operator [](String str){
    if('age' == str){
      return this.age;
    }
    return 0;
  }

}