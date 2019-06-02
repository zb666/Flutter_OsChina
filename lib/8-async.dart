import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  getName1();
  getName2();
  getName3();


  var ab = AB();
  var resultCall = ab.getA()+" "+ab.getB();
  print(resultCall);

}

Future getName1() async {
  await getStr1(); //这个函数会执行，并且后面的代码
  await getStr2();
  print("111");
}

getStr1() {
  print("Str111");
}

getStr2() {
  print("Str222");
}

getName2() {
  print("name 222");
}

getName3() {
  print("name 333");
}

class A{
  String getA()=> 'A';
}

class B{
  String getB()=>'B';
}

class P{
  String getP()=>'p';
}

class AB extends P with B implements A{

  //这里只是标明了要实现A的方法，但是具体实现要在B中的mixin
  @override
  String getA() {
    return "这是改造后的 imp A ";
  }

}
