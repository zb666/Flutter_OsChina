import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildIndexdStack(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _index = Random().nextInt(2)%2;
        });
      }),
    );
  }

  Stack buildIndexdStack() {
    return IndexedStack(
      index: _index,
      alignment: Alignment(0.5,0.5),
      children: <Widget>[
        Container(
          color: Color(0xff0000ff),
          width: 200.0,
          height: 200.0,
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Color(0xffff0000),
        )
      ],
    );
  }
}
