import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//使用自定义的state对象作为vysnc的时候，请包涵 TickerProviderMixin
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _doubleAnim;
  AnimationController _animationController;
  String _animValue;

  //四种状态
  //1 dismissed 初始状态
  //2 forward 从头到尾
  //3 reverse 反转
  //4 completed 完成的状态
  @override
  void initState() {
    super.initState();
    //vysnc 防止屏幕外部的动画消耗资源
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _doubleAnim = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        print(_doubleAnim.value.toString());
        setState(() {
          _animValue = _doubleAnim.value.toString();
        });
      })
      ..addStatusListener((status) {
        if(status==AnimationStatus.completed){
          _animationController.reverse();
        }else if(status == AnimationStatus.dismissed){
          _animationController.forward();//
        }
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //??=还有个赋值的作用 ??只是起到给与数据的作用
        body: Center(
          child: Text(_animValue ??= "0.0"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _animationController.forward(from: 0.0);
            },
            child: Icon(Icons.play_arrow)));
  }
}
