void main(List<String> args) {
  var page = new Page();
  Page.scrollDown();   // 可以用类直接返回静态方法
}
class Page{
  static const maxPage = 10;
  static int currentpage = 1;

  static void scrollDown(){
    currentpage = 1;
    print('scrollDown...');
  }
  void scrollUp(){
    currentpage++;
    print('scrollUp...');
  }
}
