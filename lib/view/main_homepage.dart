import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FloatingPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    //初始化画笔 并且随机的赋予颜色
    var amberPaint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 5.0;
    var greenPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 5.0;
    var bluePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0;
    var redPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5.0;

  }

  //在刷新布局的时候 是否需要重新绘制，那么答案显然是不需要
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}

