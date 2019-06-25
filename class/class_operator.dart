void main(List<String> args) {
  var  person = new Person();
  // person?.work(); // 若有这个属性就执行，若没有就什么都不做

  // var person;
  // person = '';
  // person = new Person();
  // (person as Person).work(); // 变量名赋值过多的情况下，不知道类型具体是啥，需要进行类型转换

  // if(person is Person){
  //    person.work();
  // }
  // person..name='tom'
  //       ..age = 10
  //       ..work();

  print(person('hah'));
}

class Person{
  String name;
  int age; 
  void work(){
    print('working....');
  }
  String call(String name){
    return 'name = $name';
  }
}