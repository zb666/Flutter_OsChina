import 'dart:ffi';

void main() {
  //number跳过

  //------------------------ List列表(数组)--------------------------------//
  List growableList = List();
  var varList = new List()..length = 3;
  varList.add("map");

  var lastEle = varList.first;
  print(lastEle);

  var map = {1: 2, "2": 3};
  var keyOne = map[1];
  print(keyOne);

  var a = [1,2];
  var b = [2,3];

  //操作符 拼接
  var list = a+b;

  ///--------------------------- Maps键值对集合:Map--------------------------------------

  print("--------------------map------------------------------");

  //动态赋值
  var dynamicMap = Map();
  dynamicMap["name"] = "MapName";
  dynamicMap["value"] = "Map's Value";
  print(dynamicMap["value"]);

  //强类型
  var intString = Map<int,String>();


  var set = Set();
  set.add("111");
  set.add(111);


  //其余参考Damon的笔记
}

String get str => "str";

String get strValue {
  return "value";
}


