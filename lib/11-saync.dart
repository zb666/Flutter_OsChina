import 'dart:async';

//dart单线程模型
void main() {
  //getName(
  getName();
  getStr();
  getStr2();
}

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
