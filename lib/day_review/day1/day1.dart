import 'dart:core' as prefix0;

import 'dart:core';


void main() {
  final varA = "VARA";
  const b = "b"; //编译时期的变量

  Object i = 1; //表示任意的类型
  i = 2;

  int aaa = 123;
  aaa = 456;

  String runTime = "";
  runTime = b;

  dynamic test = "Test";
  test = "DynamicResult";
  //dart

  //dart根据平台 所占用的大小不同

  int intI = 0xffffffffffffffff; //当中的int，在编码的时候可以将 Int当成java的 int long来使用
  //如果超过了四个字符，那么dart会将其编译成类似 java当中的long

  const _b = 1;
  //const可以赋值给final变量
  final _a = _b;

  //dart中没有flutter
  double d = 1.23;
//  float f = 1.0; 报红 dart中没有float数据类型,只有double类型

  var aaaLength = aaa.bitLength;

  prefix0.String strAAA = "number" + "aaa" + intI.toString();

  var strThree = '''aaa
  bbb
  ''';

  var twoStr = "\n";

  var aaaaa = '$aaa';
  //转意 "\n"

  print("$varA $aaa $test $b $i $d ${aaa.bitLength}  $strAAA $strThree ");

  var iA = #A; //可以看成是C中的宏，表示编译时的常量
  switch (iA) {
    case #A:
      print(iA);
      break;
    case #B:
      print("BBB");
      break;
  }


  var list = [1,2,3];

  list.forEach(singleAdd);

  var a = (int a){

  };

  a(1);


}

class TestA{

  String name;

  TestA._newObject(this.name){
    var a = 14;
  }



}



void singleAdd(int a){
  print(a);
}

typedef void Listener(String result);

void setListener(Listener listener) {
  listener("Success");
}

int add([int i = 1, int j = 2]) => i + j;
