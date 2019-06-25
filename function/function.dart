void main(List args){
  print(args);
  // print(getPerson('name',10));
  printPerson('niuxialing',age:19);
  printPerson('fff',age:19,gender:'girl');
}
String getPerson(String name,int age){
  return 'name=$name;age=$age';
}

printPerson(name,{int age=14,String gender}){
  print('name=$name age=$age gender=${gender}'); // 花括号参数可以随意组合传过去
}
