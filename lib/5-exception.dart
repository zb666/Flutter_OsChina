void main() {
  try {
    throw new NullThrownError();
  } on Error {
    print('error  类型异常被捕获');
  } catch (e, s) {
    //StackTrace 对象
    print(e);
    print(s);
  }

  //父类构造函数 直接调用的是自己的
  var point = Point.fromJson(1, 2);
  print([point.x, point.y]);

  //先调用父类的构造函数，然后再调用自己的构造函数
  Child child = Child.fromJson(2, 3);
  print([child.x, child.y]);
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  //命名构造函数
  Point.fromJson(x, y)
      : x = x,
        y = y {
    print("父类命名构造函数 ${x + y}");
  }
}

class Child extends Point {
  num x;
  num y;

  Child.fromJson(x, y)
      : x = x,
        y = y,
        super.fromJson(x, y) {
    print("子类构造函数 ${x + y}");
  }
}

//常亮构造函数 -> 好处是创建出来的对象不能有2个，在内存中已经存在了该实例，不会重复的进行创造了
