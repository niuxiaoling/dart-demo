void main(){
  var map1 ={
    'first':'dart',
    1:true
  };

  print(map1);
  var map2 = const {
    'first':'dart',
    1:true
  };
  print(map2.length);
  print(map2.containsKey(1));
  // print(map2.keys);
  print(map2.values);
  // print(map2.remove(1));
  map2.forEach((value,key){
    print('value:${value},key:${key}');
  });
  var list = ['111','3333','444'];
  print(list.asMap());
}