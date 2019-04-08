
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context){
        return FlatButton(onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('点击弹出SnackBar弹窗')));
        }, child: Text('Button'));
      }),
    );
  }
}
