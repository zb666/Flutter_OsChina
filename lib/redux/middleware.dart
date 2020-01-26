import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_osc_client/redux/CountState.dart';
import 'package:flutter_osc_client/redux/action_reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

///第三步 把所有的中间件集合到一起
List<Middleware<CountState>> initMiddleware() {
  List<Middleware<CountState>> middlewares = [];
  List<MiddlewareFactory> factories = [
    LoggerMiddle(),
    ///第三步，一起放入到中间件集合
    ThunkMiddle(),
  ];
  factories.forEach((factory) => middlewares.addAll(factory.generate()));
  return middlewares;
}

abstract class MiddlewareFactory {
  MiddlewareFactory();

  List<Middleware<CountState>> generate();
}

class ThunkMiddle extends MiddlewareFactory {
  @override
  List<Middleware<CountState>> generate() {
    return [TypedMiddleware<CountState, ThunkAction>(_doThunk)];
  }

  void _doThunk(Store<CountState> store, action, next) {
    if (action is ThunkAction<CountState>) {
      action(store);
    } else {
      next(action);
    }
  }
}

//1. 消息中间件生产工程
//2. Middleware提供分类处理action的机会
//3. 自由插拔消息中间件
//4. 进行action的拦截和处理
//5. 集中中间件 放到一起进行处理
//状态持久化。可以把Store(存储数据用的)中的State序列化到本地文件，
//然后启动的 时候反序列化出来就行了
//6. 核心原理 观察者方式分发数据
//注册中间件->List<Middleware<State>>->集合调用Dispatcher进行分发
/// _dispatchers[0](action); //核心原理 分享数据
class LoggerMiddle extends MiddlewareFactory {
  @override
  List<Middleware<CountState>> generate() {
    //通过new的方式创建中间件
    return [
      TypedMiddleware<CountState, IncrementAction>(_doIncreLogger),
      TypedMiddleware<CountState, DecreAction>(_doDecreLogger)
    ];
  }

  void _doIncreLogger(Store<CountState> store, IncrementAction action, next) {
    next(action);
    debugPrint(""
        "store:${store.state}"
        "types:${action.types}"
        "value:${action.value}");
  }

  void _doDecreLogger(
      Store<CountState> store, DecreAction action, NextDispatcher next) {
    next(action);
    debugPrint(
        "store:${store.state.count}, action type ${action.types}, value ${action.value}");
  }
}

facFun(MiddlewareFactory factory) {
  return factory.generate();
}
