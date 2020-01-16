import 'dart:core';

void main() {
  //未初始化的变量类型可变
  var data;
  data = "String";
  data = 1523;
  print(data);

  dynamic data1;

  data1 = "";
  data1 = 123;

  Object data2;
  data2 = 123;
  data2 = "123";

  var sss = "sss";
//  sss = 123;//类型推导不能再被赋值了

//dynamic 动态任意类型，编译时期不做检查
//object 动态任意类型，但是编译时期做检查
//var如果一开始有值，那么类型在开始的时候就会被锁定

  final list = [1, 2, 3];
  for (var value in list) {
    print(value);
  }

  var varList = [1, 2];
  varList = [3]; //可以更改非Final 非const的值

  //const修饰的变量在内存中是不会重复创建的
  //const修饰的集合  集合中的变量也是不可变得

  final constList = [1,"123字符串",3];
  print(constList[1]);

  //const修饰的常亮不会再内存中重复的进行创建
  final finalA = [1,2];
  final finalB = [1,2];
  print(identical(finalA, finalB)); //变量会被重复创建

  const constA = [1,2];
  const constB = [1,2];
  print(identical(constA, constB)); //equals reference

  int parsedInt = int.parse("123");


}
