import 'dart:async';

//dart单线程模型
void main() {
  //getName(
//  getName();
//  getStr();
//  getStr2();

//异常处理
//  new Future(() => futureTask())
//      .then((i) => 'abc$i');
//      .then((m) => print('接收到传递的参数$m'))
//    .then((_)=>new Future.error('出错了'));
//      .whenComplete(() => print('whenComplete'));

  const CITY_NAMES = ["北京", "呼和浩特", "黑龙江"];

//  CITY_NAMES.map((city) => _item(city)).toList();

/*future task */
}

_item(String city) => city.length;

futureTask() => 10;

//async等一下=>Future方法 返回值默认是Future
//注意! 不是多线程，多线程的话需要使用到隔离
/**
 * +了 await之后，先跑完await同一行的代码,
 * 然后让出cpu,等主线程全部
 * 跑完之后再来跑自己的代码
 */
getName() async {
  await initRun();
  print('主线程跑完了');

  //future 肯定是后面打印的 Future类将消息挂到Queue的最后面
  new Future(() => print('F1')).then((_) => {"F2"}).then((m) => 'F3');
}

initRun() {
  print('await 初始化完毕 ');
}

getStr() {
  print('await让出cpu 开始执行 str操作');
}

getStr2() {
  print('await让出cpu 开始执行 str操作');
}

///同步生成器
getSynGentor(int n) sync* {}

//异步生成器 数据一次性返回
