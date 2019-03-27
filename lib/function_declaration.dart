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

  SortCollection sortCollection = new SortCollection(sort);
  print(sortCollection.compare is Function);
  print(sortCollection.compare is Comparator<int>);

  calculator(1, 2, add);
  //函数对象=>
  calculator(1, 2, divider);

}

getString(name) {
  return name;
}

getHHH(String name) {
  return name;
}

//typeDef保留函数签名信息
class SortCollection {
  Function compare;

  SortCollection(int f(a, b)) {
    this.compare = f;
    //带{}时候的写法
    add2(2, b: 2);
    //带[]的写法
    add3(3, 4, 5);
    add3(3, 4);
  }
}

int sort(Object a, Object b) => 0;

int add2(int c, {int b = 0}) {
  return c + b;
}

int add3(int e, [int f = 2, int g = 3]) {
  return e + f + g;
}

//typedef  函数的别名 ，方便我们进行区分和记忆
//但是也不是随便定义的函数的签名(也就是参数列表需要一致)
typedef MyFunc(int a, int b);

add(int a, int b) {
  print("${a + b}");
}

divider(int a, int b) {
  print("${a / b}");
}

calculator(int a, int b, MyFunc myFun) {
  func(a, b);
}

func(a, b) {}
