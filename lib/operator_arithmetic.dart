void main() {
  int a = 11;
  int b = 2;
  int c = 10;

  //取得商 得到的是5
  var i = a ~/ b;

  //取得全部的数据 得到的是5.5
  var d = a / b;
  //=-*/% 运算符号
  print(b % 10);
  print(++b);
  print(b++); //这里先进行print 然后进行+1的操纵

  //判断对象是否相等有其他的方法 == ，这里和java 有所不同

  print(a == c);

  //&& 和java 相同 略...

  //逻辑运算符
  var str = "String";
  print(str.isEmpty);

  //赋值运算符号 =,??=

  c ??= 30; //c如果有值的话 就用自己的 不然的话就使用30作为其返回值

  b *= c;
  //三目运算符号 同java

  String aq;
  String bq = "java";
  String cq = aq ?? bq;
  print("??" + "左边为空的情况下  就使用右边的值作为返回: " + cq);
  //if 运算符号 同java 略
  //还有和kotlin相同的写法 ?.

  num x;
  x = 1;

  num y;
  y = 2;

  print("$x " + "$y");
  //break continue 同java ，值得注意到是break终止的是其所在的for循环的语句中
  showNum(x, y);

  MyFunc myFunc = add(2, 1);
  myFunc = divider(4, 1);
}

void showNum(num x, num y) {
  print("showNum $x $y");
}

//给函数取别名
typedef MyFunc(int a, int b);

add(int a, int b) {
  print("${a + b}");
}

divider(int a, int b) {
  print("${a / b}");
}

Function makeAddFunc(int a){
  // 匿名函数
  return (int y)=>a+y;
}
//M 默认参数值
