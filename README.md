> 由于flutter 是用的dart语法，个人觉得，工欲善其事，必先利其器，知道了由什么写的，后面就不难啦。
# dart 安装
> Mac 安装

一.安装homebrew后执行
```
brew tap dart-lang/dart
brew install dart            // 安装稳定版

brew install dart --devel    // 安装开发版
安装完成后查看路径
```
![](https://user-gold-cdn.xitu.io/2019/6/21/16b7899cfe80cd7f?w=1190&h=910&f=png&s=176309)
二.配置环境变量，即可在全局使用dart
```
brew info dart
配置环境变量，找到~/.bash_profile,添加一句，路径为刚刚查到的
export PATH=/usr/local/Cellar/dart/2.1.0/bin:$PATH
```
三.在vscode中使用dart

新建文件,eg:main.dart

安装code runner扩展程序，每次点击右上角的三角形图标即可执行dart编译。这个扩展程序蛮好用的，可以支持多种语言的编译。

# dart 语法
## 入口文件，固定写法
```
void main(){}
```
## 变量与常量
使用`var`声明变量，可赋予不同的值

未初始化时，默认值为`null`

使用`final`声明一个只能赋值一次的变量

使用`const`声明常量

使用`const`声明的必须是编译期常量

## 数据类型
共有Number、String、Boolean、List(列表)、Map(键值对)、Runs(不常用)、Symbols(不常用)
### num 
> 分为 包括 int(整型)和double(浮点型)

```
  num a = 10; // num  型可以指定浮点和整型
  a =10.2;
  
  int b = 10;
  // b = 11.11;  // ❌ 具体的类型声明后不能再赋予为浮点型了
```
#### 数值型操作
- 运算符
```
+，-、*、/ 、 ~/(取整)、%（取余）
```
- 常用属性
```
isNaN(是否是非数字)、isEven(是否是偶数)、isOdd(是否是奇数)
```
- 常用方法

```
abs() // 绝对值
round() // 向下取整
floor()  // 向上取整
ceil() 
toInt() 、toDouble()
```
### String 字符串
使用单引号或双引号创建字符串

使用三个引号创建多行字符串
#### 字符串操作
- +(字符串连接)  *（字符串倍数）  ==（字符串是否相等） [] （字符串的下标）
- 插值表达式${}
- 属性 length、 isEmpty、isNotEmpty
- 方法 contains()  subString() startsWith() endsWith() indexOf()  lastIndexOf()
- toLowerCase() toUpperCase()  trim()  trimLeft() trimRight() split() replace()

### bool 布尔型
```
 bool  aa =  true; 
```
### List 列表
#### 创建
- 创建list  var list = [1,2,3];
- 创建不可变的list     var list = const [1,2,4];
- 构造函数  var list = new List()
#### list操作
- length
- add() insert()
- remove() clear()
- indexOf() lastIndexOf()
- sort() 排序 sublist() 截取元素
- shuffle() asMap()转为map型 forEach()

### Map 键值对
#### 创建
- 创建map  var map={'name':'wang','age':18};
- 创建不可变的map     var map = const {'name':'wang','age':18};
- 构造函数  var list = new Map()
#### map 操作
- length,[]
- isEmpty(), isNotEmpty()
- keys,values
- containsKey() containsValue()
- remove() 
- forEach()

### dynamic 动态类型
```
var list = new List<dynamic> ();
  list..add('1')..add(2)..add(true);
  print(list); // ['1',2,true] 动态添加不同类型的值
```
## 运算符
> 算数运算符
-   <pre>+ - *  /  ++ -- </pre> 
> 关系运算符
-  <pre>> < >= <= != </pre>
- 判断内容相同使用 == 
```
  String str1 ='123';
  String str2 = '123';
  print(str1 == str2); //true
```
> 逻辑运算符
- ！ && ||
> 赋值运算符
- 基础 =   ??= 存在运算符
- 复合 += -=   *= /=  %=  ~/=

```
  int m;
  m ??= 10;
  print(m);  //10,若初始值有值则??=后面的值不赋值，若无值则赋值
  
  int m = 5;
  m ??= 10;
  print(m); // 5
```
> 条件表达式
- 三元表达式
- ??运算符
```
  String cc;
  String cd ='dart';
  String c = cc ?? cd;
  print(c); //'dart'  如果前面有值就用前面的没值就用后面的
```
## 控制语句
> if
- if  if..else if ...else   if..else
> for 
- for  for..in
```
var list =['我们','要永远','在一起'];
  for(var index = 0;index<list.length;index++){
    print(list[index]);
  }
  for(var item in list){
    print(item);
  }
```
- whild  do...while
- break 终止循环  continue 跳出当前循环
- switch...case
## 方法
- 格式
返回类型  方法名 （传参1，传参2）{ 方法体  return 返回值}
```
void main(List args){} //第一个表示返回类型，void 表达不需要返回类型,括号里面表示传参

```
### 方法特性
  - 方法也是对象
  - 返回值类型 参数类型可以省略
  - 箭头语法，只适合一个表达式 => expr
  - 方法都有返回值，若没有指定，默认返回null
```
String getPerson(String name,int age){
  return 'name=$name;age=$age';
}
```
### 可选参数
  - {param1,param2,param3}
  - [param1,param2,param3]
```
printPerson('niuxialing', 18);    //name=niuxialing age=18 gender=null
printPerson('fff',19,gender:'girl');  //name=fff age=19 gender=girl
printPerson1('xiaoling',18,'boy');  //name=xiaoling age=18 gender=boy
  
printPerson(name,age,{String gender}){
  print('name=$name age=$age gender=${gender}'); // 花括号参数可以随意组合传过去
}

printPerson1(name,[int age,String gender]){
  print('name=$name age=$age gender=${gender}'); // 中括号必须按照顺序传
}
```
> 正常参数必须在可选参数的前面
### 默认参数 
  - 使用= 在可选参数指定默认参数
  - 默认参数只能是编译时常量

### 方法对象
  - 方法可作为对象赋值给其他变量
  - 可作为参数传递给其他方法
```
void main(){
   List list = ['i','am','a']; 
   print(listChange(list,times)); // 传一个函数作为参数
}
List listChange(List list,String times(String str)){  注意：参数定义了类型，函数下面也要定义类型，否则会报错
  for(var index = 0; index < list.length;index++){
    list[index] = times(list[index]);
  }
  return list;
}


String times(String str){
  return str * 3;
}
```
### 匿名方法
- 可赋值给变量。通过变量进行调用
- 可在其他方法中直接调用或传递给其他方法

```
//方式一 赋值给变量调用
  var fun = (str){
    print('print hello -${str}');
  };
  fun('niuxiaoling');
  // 方式二 自执行
  ((){
    print('调用');
  })();
  // 方式三 在其他方法中调用
  List listTimes(List list){
  var fun = (str){  // 匿名函数
    return str*3;
  };
  for(var index = 0; index<list.length;index++){
    list[index] = fun(list[index]);
  }
  return list;
}
```
### 闭包
 - 闭包是一个方法（对象）
 - 闭包定义在其他方法的内部
 - 闭包能访问外部方法内的局部变量，并持有其状态
 ```
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
 ```
 
 ## 面向对象
###  类与对象
与Java 很相似
- 通过`class`声明一个类
- 使用关键字`new`创建一个对象，new可省略
- 所有对象都继承与`Object`类

### 属性与方法
- 属性默认生成`setter`和`getter`方法
- 使用`final`声明的属性只有getter方法，就是说不能设置
- 属性和方法都可以通过.访问
- 方法不能被重载
- 类名首字母必须大写
### 类及成员可见性
- Dart中的可见性以`library(库)`为单位
- 默认情况下，每个dart文件就是一个库
- 使用下划线—表示库的私有性，只能在当前库中使用，属性和方法同理
- 使用import导入库

### 计算属性

计算属性是计算而来的，本身并不存储值，计算属性赋值是通过计算转换到其他实例变量上面的。
- 重写`set`和`get`方法
- get格式  返回值  get 属性
```
  void main(){
      print(rec.area); // 是属性，不是方法
  }
  num get area{
    return width * height;
  }
```
- set格式 set 属性(){}
```
  void main(){
     rec.area = 200;
      print(rec.width); //180
  }
  set area(value){
    width = value -20 ;
  }
```
### 构造方法

- 如果没有自定义构造方法，会有个默认构造方法
- 如果存在自定义构造方法，默认构造方法无效
- 构造方法不能重载
- 格式 类名(){}
```
class Person{
    Person(){} //构造函数
}
```
- 构造函数的2种赋值方法

方式一（语法糖常用 的）
```
class Person{
    String name;
    int age; final String gender;
    Person(this.name,this.age,this.gender); // 此时的初始化赋值在构造函数之前，所以可以修改final 声明的属性
}
```
方式二
```
class Person{
  String name;
  int age;
  final String gender;
  Person(String name ,int age,String gender){
    this.name = name;
    this.age = age;
    this.gender = gender;  // 此时会报错，因为final声明的属性不能修改
  }

  String work(){
    return '$name is $age,but he is working hard,he is a $gender';
  }
}
```

### 命名构造方法

```
void main(){
    var alice = Person.getName('alice');
}
class Person{
    String name;
    Person.getName(this.name);
}
```
### 常量构造方法
- 如果类是不可变状态，就可以把对象定义为编译时常量
- 使用const声明构造方法，并且所有变量都为final
- 使用const 声明对象，可以省略
```
void main(){
    const a = Person('xiaoling',19);
}
class Person{
  final String name;
  final int age;
  const Person(this.name,this.age); // 必须前面加const
}
```

### 工厂构造方法
- 类似于设计模式中的工厂模式
- 在构造函数前面加关键字`factory`实现一个工厂构造方法
- 在工厂构造方法中可以返回对象
```
class Factory{
  final String name;
  factory Factory(String name){  //工厂构造方法可以返回对象
    return Factory._inter(name);  // 返回对象
  }

  Factory._inter(this.name);   // 类私有的命名构造函数
}
```
### 初始化列表
- 初始化列表在构造方法体之前执行
- 使用逗号分隔初始化表达式
- 初始化列表常用于设置`final`变量的值
```
void main(){
  var a = Person.mapValue({'name':'xoaling','age':19});
}
class Person{
  String name;
  int age;
  final String gender;
  Person.mapValue(Map map): name= map['name'],gender = map['gender']{
    this.age = map['age'];
  }
}
```
### 静态成员
- 使用`static`关键字实现类级别的变量和函数
- 静态成员不能访问非静态成员，非静态可以访问静态成员
- 类中的常量需要使用`static const `来声明
```
void main(List<String> args) {
  var page = new Page();
  page.scrollUp() //报错
  Page.scrollDown();   // 可以用类直接返回静态方法
}
class Page{
  static const maxPage = 10; //常量必须加关键词static
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

```
### 对象操作符
- 条件运算符 ?.
```
void main(List<String> args) {
  Person person = new Person();
  person?.work();  //若有这个属性就执行，若没有就什么都不做
}

class Person{
  String name;
  int age; 
  void work(){
    print('working');
  }
}
```
- 类型转换 as
```
  var person;
  person = '';
  person = new Person();
  (person as Person).work(); // 变量名赋值过多的情况下，不知道类型具体是啥，需要进行类型转换
```
- 是否是指定类型 is   is!
```
 if(person is Person){
     person.work();
  }
```
- 级联操作符 ..
```
  person..name='tom'
        ..age = 10
        ..work(); 
  一直执行，用分号结束
```
### call 方法
- 如果类实现了`call()`方法，则该类的对象可以作为方法使用
- 名称是call
```
void main(){
    var person = Person();
    peron('hah');  // name = hah
}
class Person{
  String name;
  int age; 
  String call(String name){
    return 'name = $name';
  }
}
```

## 高级进阶  封装、继承、多态
### 继承
- 使用关键词`extends`继承一个类
- 子类会继承父类可见 的属性和方法，不会继承构造方法
- 子类可以复写父类的方法 setter 和getter 方法
- 单继承，多态性
```
void main(){
  var student = new Student();
  print(student.isAudit);  //true
}
class Person{
  String name;
  int age;
  bool get isAudit => age>18;
  void run(){
    print('run,,');
  }
}

class Student extends Person{
  void study(){
    super.run();
    print('study....');
  }
  @override    // 重写父类方法
  bool get isAudit => age>=10;
}
```

### 继承中的构造方法
- 子类的构造方法默认会调用父类中的无名无参构造方法
```
void main(){
  Student student = Student();

}
class Person{
  Person(){
    print('父类的构造方法');
  }
}
class Student extends Person{
  int age;
}
```
- 如果父类没有无名无参构造方法，则需要显示调用父类构造方法
```
void main(){
  Student student = Student('tom');
}
class Person{
  String name;
  Person(this.name){
    print('父类的构造方法');
  }
  Person.widthName(this.name);
}
class Student extends Person{
  Student(String name) : super(name);
}
```
### 构造方法执行顺序
- 父类的构造方法在子类构造方法体开始执行的位置调用
- 如果有初始化列表，初始化列表在父类构造方法之前执行,初始化列表与继承用逗号隔开
```
class Student extends Person{
  int age;
  final String gender;
  Student(String name,String gender):  gender = gender,super.widthName(name);
}
```
### 抽象类
- 抽象类使用关键字`abstract`表示。不能直接被实例化
- 抽象方法不用`abstract`实现，无实现的
- 抽象类可以没有抽象方法
- 有抽象方法的一定要是抽象类

### 接口
- 类和接口是统一的， 类就是接口
- 每个类都隐式的定义了一个包含所有实例成员的接口
- 使用关键词`implements`
- 如果是复用已有类的实现，使用继承(extends)
- 如果只是使用已有类的外在行为，就使用接口（implements）

### mixins
- 类似于多继承，是在多类继承中重用一个类代码的方式
- 若有同一个方法，是看继承的顺序的，执行最后一个的方法
```
void main(List<String> args) {
  var teacher = new Teacher();
  teacher.study(); // teacher 同时拥有3个类的方法
}

class Student1{
  void study(){
    print('student1 study...');
  }
}
class Student2{
   void run(){
    print('student2 study...');
  }
}
class Student3{
   void singer(){
    print('student3 study...');
  }
}
// 若需要Teacher同时拥有上面3个学生的类，用继承
class Teacher extends Student1 with Student2,Student3{

}
```
- 作为mixins的类不能有显式声明的构造方法

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8d680dff035d5?w=1364&h=762&f=png&s=113743)
- 作为mixins的类只能继承Object
- 使用关键字`with`连接一个或多个mixin
### 操作符的覆写
- 覆写操作符需要在类中定义
```
格式  返回类型 关键字operator (参数1，参数2){
    实现体
    return 返回值
}
```
- 如果覆写== ，还需要覆写对象的hasCode getter方法

可覆写的操作符

`[]=`   `>`   `< ` ` | `  `/` `~/` `^`  `>>` `<<` `%` `[]` `*`  `&` `>=` `<=` 
```
void main(List<String> args) {
  var person1 = new Person(19);
  var person2 = new Person(30);
  print(person1>person2);
  print(person1['age']);
  print(person1 == person2);
}

class Person{
  int age;
  Person(this.age);

  bool operator >(person){    //定义操作符>
    return this.age > person.age;
  }

  int operator [](String str){  //定义操作符[]
    if('age' == str){
      return this.age;
    }
    return 0;
  }

}
```
## 枚举
- 枚举是一种有穷序列集的数据类型
- 使用关键字`enum`定义一个枚举
- 常用于代替常量，控制语句等
### 枚举特性
- index 从0开始，依次累加
- 不能指定原始值，即默认值
- 不能添加方法
```
void main(){

  var colorbox = Colors.blue;
  print(colorbox.index);  // 获取index
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
    red,
    green,
    blue
  }
```
## 泛型
- dart中类型是可选的，可使用泛型限定类型
- 使用泛型可以有效减少代码的重复
### 泛型的使用
- 类的泛型
```
在属性上使用泛型
void main(){
  var a = new Type<int>();
  a.input(1);
  var b = new Type<String>(); // 在属性上使用泛型
  b.input('sss');
}

class Type<T>{
  T element;
  void input(T element){
    this.element = element;
    print(this.element);
  }
}
```
```
void main(){
  var p1 = new Person();
  p1.input<int>(1);
  p1.input<String>('sss');
}
class Person{
  void input<T>(T element){
    if(T == int){
      print('只能输入数字');
    }
    if(T == String){
      print('只能输入字符串');
    }
  }
}
```
