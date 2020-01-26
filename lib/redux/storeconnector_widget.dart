import 'package:flutter/material.dart';
import 'package:flutter_osc_client/redux/CountState.dart';
import 'package:flutter_osc_client/redux/action_reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

class StoreConnectorTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///第六步 获取store的state
    return StoreConnector<CountState, int>(
      converter: (store) => store.state.count,
      builder: (context, count) {
        return Text("Count: $count");
      },
    );
  }
}

//加
class StoreConnectorAddButtonWidget extends StatelessWidget {

  String text;
  int value;
  StoreConnectorAddButtonWidget(this.text,this.value):super();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, VoidCallback>(
      converter: (Store<CountState> store) {
        return () => store.dispatch(IncrementAction(value));
      },
      builder: (context, callback) {
        return RaisedButton(
          child: Text(text),
          onPressed: callback,
        );
      },
    );
  }
}

//减
class StoreConnectorDecreButtonWidget extends StatelessWidget {

  String text;
  int value;
  StoreConnectorDecreButtonWidget(this.text,this.value):super();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, VoidCallback>(
      converter: (Store<CountState> store) {
        return () => store.dispatch(DecreAction(value));
      },
      builder: (context, callback) {
        return RaisedButton(
          child: Text(text),
          onPressed: callback,
        );
      },
    );
  }
}

class AsyncAddButton extends StatelessWidget {

  String text;
  int value;
  AsyncAddButton(this.text,this.value):super();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, VoidCallback>(
      converter: (Store<CountState> store) {
        return () => store.dispatch(asyncIncrement(value));
      },
      builder: (context, callback) {
        return RaisedButton(
          child: Text(text),
          onPressed: callback,
        );
      },
    );
  }
}


