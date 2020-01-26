import 'package:flutter/material.dart';
import 'package:flutter_osc_client/redux/CountState.dart';
import 'package:flutter_osc_client/redux/action_reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class AsyncBt extends StatelessWidget {
  String text;
  int value;

  AsyncBt(this.text, this.value);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, VoidCallback>(
        builder: (context, callback) =>
            RaisedButton(onPressed: callback, child: Text(text)),
        converter: (Store<CountState> store) {
          return () => store.dispatch(asyncIncrement(value));
        });
  }
}
