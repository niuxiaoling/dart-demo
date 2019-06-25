void main(){

}
class Factory{
  final String name;
  // static final Map;
  factory Factory(String name){
    return Factory._inter(name);  // 返回对象
  }

  Factory._inter(this.name);

  void log(String msg){
    print(msg);
  }
}