void main(){
  var f = fun();
  f();
}

fun(){
  var count = 0;
  return (){
    print('aa=$count');
  };
}