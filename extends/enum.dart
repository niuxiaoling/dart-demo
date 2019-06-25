void main(){

  var colorbox = Colors.blue;
  print(colorbox.index);
  switch(colorbox){
     case Colors.blue:
      print('blue');break;
     case Colors.green:
      print('green');break;
      case Colors.red:
      print('red');break;
  }
   
}
  enum Colors{
    red,green,blue
  }