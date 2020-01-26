import 'package:flutter/cupertino.dart';
import 'package:flutter_osc_client/redux/CountState.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

enum Actions { increment, decrement }

class Action {
  final Actions types;

  Action(this.types);
}

class IncrementAction extends Action {
  int value;

  IncrementAction(this.value) : super(Actions.increment);
}

//减value
class DecreAction extends Action {
  int value;

  DecreAction(this.value):super(Actions.decrement);

}

CountState increReducer(CountState preState, dynamic action) {
  switch (action.type) {
    case Actions.increment:
      return CountState(preState.count + action.value);
    default:
      return preState;
  }
}

CountState decreReducer(CountState state,dynamic action){
  switch(action.type){
    case Actions.decrement:
      return CountState(state.count+action.value);
    default:
      return state;
  }
}

///合并reducer
final reducers = combineReducers<CountState>(
  [increReducer,decreReducer]
);

///第一步 创建一个ThunkAction类型的异步Action处理函数
ThunkAction asyncIncrement(int value){
  return (Store store) async {
    await Future.delayed(Duration(seconds: 3));
    store.dispatch(IncrementAction(value));
  };
}
