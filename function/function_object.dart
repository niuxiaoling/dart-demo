void main(){
  //  var fun = printHello;
  //  Function fun1 = printHello;
  //  fun();
  //  fun1();
   var list = ['i','am','a'];
   print(listChange(list,times));
}

// void printHello(){
//   print('hello world');
// }
// 一个方法作为一个对象的参数
List listChange(List list,String times(String str)){
  for(var index = 0; index < list.length;index++){
    list[index] = times(list[index]);
  }
  return list;
}


String times(String str){
  return str * 3;
}