import 'package:flutter/material.dart';
import 'package:flutter_osc_client/anim/1-anim_builder.dart';
import 'package:flutter_osc_client/redux/CountState.dart';
import 'package:flutter_osc_client/redux/action_reducer.dart';
import 'package:flutter_osc_client/redux/first_page.dart';
import 'package:flutter_osc_client/redux/middleware.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<CountState>(
      reducers, //生产者 也可以理解成数据的源头
      initialState: CountState.initState(),//真正的数据类型
      middleware: initMiddle()
  );
  runApp(MyApp(store));
}

initMiddle() => initMiddleware();

class MyApp extends StatelessWidget {
  //store放入到顶层
  final Store<CountState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: MaterialApp(
        title: "My Redux",
        home: Scaffold(
          appBar: AppBar(title:Text('Redux Title')),
          body:FirstPage('Redux First Page'),
        ),
      ),
    );
  }
}
