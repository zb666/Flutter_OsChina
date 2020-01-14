void main(){
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

  print("$varA $aaa $test $b $i");
}