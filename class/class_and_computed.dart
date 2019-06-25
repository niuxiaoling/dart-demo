void main(){
  var rec = new Recong();
  rec.width = 10;
  rec.height = 20;
  print(rec.area); // 是属性，不是方法

  rec.area = 200;

  print(rec.width);
}

class Recong{
  num width;
  num height;
  num get area{
    return width * height;
  }
  set area(value){
    width = value/20;
  }
}
