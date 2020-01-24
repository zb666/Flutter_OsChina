import 'package:flutter_osc_client/function_declaration.dart';

void main() {
  testFunc() {}


  int value = add(1, 2);

  add3(x: 1, y: 1523);

  typeFunc(annoFunc);
}

void typeFunc(Function function){
  function();
}

//dart类型推导 最后一行默认作为执行的返回值
int add(int addA, int addB) {
  return addA + addB;
}


// ignore: missing_return
int add3({int x, int y, int z}) {
  x ??= 1;
  y ??= 2;
  z ??= 3;
  print("$x $y $z");
}

var annoFunc = () => print("Value Type Pass");