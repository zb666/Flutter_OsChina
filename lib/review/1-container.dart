import 'dart:math';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Container 实例'),backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          width: 100.0,
          height: 100.0,
          //装饰的效果
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.orange,
              width: 4.0//边框粗细
            ),
            borderRadius: const BorderRadius.all(const Radius.circular(20.0))//边框弧度
          ),
          child: Text('container',textAlign: TextAlign.end,style: TextStyle(fontSize: 20.0)),
          transform: Matrix4.skewX(0.5),//向X轴倾斜45度
        ),
      ),
    ));
  }
}
