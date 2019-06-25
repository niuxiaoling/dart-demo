void main(){
  String str = '111'; //""
  String str1 = '''
    hhhhhhh
   ''';
  print(str1);
  
  print(str +'new');
  print(str * 4);
  print(str == str1);
  print(str[0]);

  String  str3 = 'this is my happy time';
  print(str3.substring(0,1));
  print(str3.split(','));
  print(str3.startsWith('t'));
  print(str3.contains('f'));
}