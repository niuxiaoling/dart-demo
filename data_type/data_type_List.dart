void main(){
  var list1 = [1,'2',true];
  print(list1[0]);
  list1[2] = 'hah';

  var list2 = const [1,2,3];
  print(list2.length);

  var list3 = new List();
  // list3[0] = 'hhah'; // 不能这样给值
  // print(list3);
  var list4 = ['aa','bb','ccc'];
  list4.add('ddd');
  list4.insert(3, 'fff');
  print(list4);
  list4.remove('fff');
  print(list4);
  // list4.clear();
  // print(list4);
  print(list4.indexOf('aa'));
  list4.sort();
  print(list4);
  
}