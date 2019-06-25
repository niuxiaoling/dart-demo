void main(){
  // var fun = (str){
  //   print('print hello -${str}');
  // };
  // fun('niuxiaoling');

  ((){
    print('调用');
  })();
  fun1();
  List list = ['xiao','ke','ai'];
  var result = listTimes(list);
  print(result);
}

var fun1 = (){
  print('aaa');
};

List listTimes(List list){
  var fun = (str){  // 匿名函数
    return str*3;
  };
  for(var index = 0; index<list.length;index++){
    list[index] = fun(list[index]);
  }
  return list;
}
