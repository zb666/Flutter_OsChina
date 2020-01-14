void main() {
  /**
   * 1.数值
   * dart中的int,可以直接将其当做java的short,int,long来使用
   * 如果dart代码超过了四个字节，那么dart将其编译成java中的long，否则编译成java当中的short或者int类型
   */
  int varAble = 1;
  startPrint(varAble);
//2. 字符串略

//3. 布尔类型
  bool b = false;
  b = true;

//4 数组
  List<String> strList = new List();
  strList..add("1")..add("2")..add("3"); //级联

  List<String> strArray = ["1", "2", "3"];
  for (var value in strArray) {
    startPrint(value);
  }

  /**
   * 5. const修饰的变量具有传递性
   */
  //const修饰的变量具有传递性
//  List<String> constList = const["4","5","6"];
//  constList.add(":1");//运行时期就会报错

//同理
//  const List<String> list3 = ["4", "6", "8"];
//  list3.add("1");

  /**
   * 6. 映射集合Map
   */
  Map<String, int> valueMap = {"1": 0x1111, "2": 2};

  var value2 = valueMap["1"];
  print(value2);

  //获取Keys或者Values
  valueMap.values;
  valueMap.keys;

  /**
   * unicode
   * 特殊字符表示类
   */
  var clapping = '\u{8F8F1}';

}

void startPrint(Object object) {
  print(object);
}
