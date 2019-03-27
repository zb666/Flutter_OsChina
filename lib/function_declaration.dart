void main(List args) {
  print(args);
  var string = getString("hhh");

  //1. 方法类型和参数表达式的类型都可以进行省略
  //2. =>可以表示的是只有一种返回值的情况
  print(string);

  //var 类型是可以变化的 可以从 int 转变成string
  String a;
  print(a?.length);

  //final的变量只能被设置一次
  final c = 50;
//  c = 30;

  //声明的必须是编译时期的常量
  const d = "kkk";

  //   1.匿名方法 2.可将将方法作为一个对象进行参数的传递
  var dynamicFun = () {
    print("这个是匿名方法,需要手动的进行调用");
  };
  //这是对象 ，需要手动的进行调用
  var dynamicFun2 = dynamicFun;
  dynamicFun();
}

getString(name) {
  return name;
}

getHHH(String name) {
  return name;
}
