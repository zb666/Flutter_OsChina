import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(Anim1());

class Anim1 extends StatefulWidget {
  @override
  _Anim1State createState() => _Anim1State();
}

class _Anim1State extends State<Anim1> with SingleTickerProviderStateMixin {
  AnimationController animationController;

  CurvedAnimation _curvedAnimation;

  Animation<double> animate;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    _curvedAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
    animate = Tween(begin: 100.0, end: 300.0).animate(_curvedAnimation);
    //启动动画
    animationController
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      })
      ..addListener(() {
        setState(() {
          var animValue = animationController.value;
          print("$animValue");
        });
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    print("==start build==");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('动画'),
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    child: Text("Hello World", style: TextStyle(color: Colors.amberAccent)),
                    color: Colors.red,
                  ),
                  Positioned(left: 18, child: Text('11111')),
                  Positioned(top: 18.0,child: Text('222222'))
                ],
              ),
            ),
            RaisedButton(
                onPressed: () {
                  animationController.forward();
                },
                child: Text('111')),
            AnimatedBuilder(
                child: Text("1111", style: TextStyle(fontSize: 20)),
                animation: animate,
                builder: (context, child) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    width: animate.value,
                    height: animate.value,
                    child: child,
                  );
                }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
