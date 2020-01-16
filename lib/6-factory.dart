void main() {
  Singleton("singleton init info");

  var rect = Rect(10, 20);
  print(rect.top);
  rect.top = 30; //这里就是set方法
  print(rect.top); //这里就是get方法的一层封装
  var top = rect.top;
  print(top);
}

//dart的new 关键字是可以省略的
//mixin 是多继承的意思  可以在extend的基础之上+with 关键字
class Singleton {
  String name;
  static Singleton _cache;

  //工厂模式的方法  为空就使用后面的语句
  factory Singleton([String name = "single"]) =>
      Singleton._cache ??= Singleton._newObject("this is constrator method");

  //构造方法
  Singleton._newObject(this.name) {
    print("来自构造方法的初始化信息 $name");
  }
}

class A {
  num a;
  num b;

  A(this.a, this.b);

  num get right => a + b;

  num get left => a - b;

  set left(value) => value += left;
}

class Rect {
  num left;
  num top;

  Rect(this.left, this.top);

  num get right => left + top;

  set right(value) => value + left;
}

abstract class Message {}
