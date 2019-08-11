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

  const cls = [1, 2];
  const cls1 = [1, 2];

  print(identical(cls, cls1));

  const CITY_NAMES = ["北京", "呼和浩特", "黑龙江"];

  print(CITY_NAMES.map((city) => _item(city)).toList());

  var person = Person("zb666", 26);
  print("age: {$person.age}  name:$person.name");

}

_item(String city) => city.length;

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
