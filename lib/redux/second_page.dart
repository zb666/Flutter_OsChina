import 'package:flutter/material.dart';
import 'package:flutter_osc_client/redux/storeconnector_widget.dart';
import 'package:flutter_redux/flutter_redux.dart';


// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  String title;

  SecondPage(this.title) : super();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreConnectorTextWidget(),
          ),

          ///第七步 发送action
          //加
          StoreConnectorAddButtonWidget("加一", 1),

          StoreConnectorAddButtonWidget("加二", 2),

          StoreConnectorDecreButtonWidget("减一", -1),

          StoreConnectorDecreButtonWidget("减二", -2),

          RaisedButton(
            child: Text("返回第一页"),
            onPressed: () {
              Navigator.of(context).pop();
              debugPrint("返回第一页");
            },
          ),
        ],
      ),
    ));
  }
}
