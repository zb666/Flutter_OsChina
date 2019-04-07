void main() {
  var data1 = 123;
//  data1 = '';
//dynamic 在编译时期不会去检查类型
  dynamic c = '123';
  print(c);

  //final,const 没有val类型
  const a = 1;
  const int constA = 1;

  //num整数 int double
  //单 双引号都能进行字符串的创建

  String s = '0sssss';
  String ss = r'''asdfsdfs //+r前缀代表的是原始目录
  dsfds
  fds\nfds
  sfdsfds'
  ''';
  print(ss);

  StringBuffer stringBuffer = StringBuffer();
  stringBuffer..write('')..write("哈哈")..write('内嵌');
  print(stringBuffer);
  //未初始化的值都是null
  bool value;
  print("Dart中所有未初始化的值都是$value");
  var str = "str";
  var t = str ??= "哈哈哈";
  //dart中方法默认的返回类型是Null

  //=>箭头函数
  var res = add(1, 2);
  print(res);

//  int add22 = add2();
//  print(add22);
  bool isPaused;
  bool result = isPaused ?? false;
  print(result);
  isPaused ??= false; //为空就对其进行赋值

  //闭包 返回该函数体的一个对象,供外界调用
  Function makeAddFunc(int x) {
//    res
    return (int y) => x + y;
  }

  //闭包返回的函数对象
  var makeVar = makeAddFunc(10);
  var makeVar2 = makeVar(40);
  print(makeVar2);
}

//表达式中只有一行方法体的时候  可以进行省略
int add(int a, int b) => a + b;
//{}大括号括起来的参数 可以不进行传参，有默认的数据

int add2({int c, int d}) => c + d;

//可选位置参数[] 可以用
int add3(int a, [int e, int f]) => a + e + f;
//[] 表示可选位置参数，{}表示的是可选命名参数
