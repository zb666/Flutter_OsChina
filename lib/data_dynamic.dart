void main() {
  var a;

  a = 10;
  a = "Dart";
  print(a);

  dynamic b = 20;
  b = "JavaScript";

  var list = new List();
  list.add(b);
  list.add(true);
  print(list.runtimeType);

  print(list.whereType());

  //运算符号 + - * %
  //递增和递减的算数运算符号

  var ls = ['aaa', 'bbb', 'ccc'];
  var ls1 = ['aaa', 'bbb', 'ccc'];
  print(identical(ls, ls1));

  const cls = [1,2];
  const cls1 = [1,2];

  print(identical(cls, cls1));
}
