import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title of App',
      routes: {'/other': (context) => OtherPage()},
      home: StlPage(),
    );
  }
}

class StlPage extends StatefulWidget {
  @override
  _StlPageState createState() => _StlPageState();
}

class _StlPageState extends State<StlPage> {
  int _currentIndex = 0;

  final _widgetOptions = [
    Text('信息栏', textAlign: TextAlign.center),
    Text('通讯录', textAlign: TextAlign.center),
    Text('发现', textAlign: TextAlign.center),
    Text('我', textAlign: TextAlign.center)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MtApp实例代码'),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由跳转',
        elevation: 0.0,
        foregroundColor: Color(0xffffffff),
        backgroundColor: Color(0xff000000),
        child: CustomPaint(
          size: MediaQuery.of(context).size,
//          painter: HeartPainter(_off),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text(
                '联系人',
                textDirection: TextDirection.rtl,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.mms),
              title: Text('信息', textAlign: TextAlign.center)),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page),
              title: Text('发现', textAlign: TextAlign.center)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('我的', textAlign: TextAlign.center)),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            //局部刷新 数据驱动UI驱动UI发生变化
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('i am otherpage')));
  }
}

class HeartPainter extends CustomPainter {
  List<Offset> _offsets;

  double _width, _height;
  Paint _paint; //画笔
  Path _path;

  HeartPainter(this._offsets, this._width, this._height) {
    _paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..blendMode = BlendMode.src //颜色缓和模式
      ..style = PaintingStyle.fill
      ..colorFilter = ColorFilter.mode(Colors.red, BlendMode.dst) //颜色混合模式
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) // 模糊遮罩效果
      ..filterQuality = FilterQuality.high //颜色渲染模式的质量
      ..strokeWidth = 3; //画笔的宽度

    _path = Path()
      ..moveTo(_width * 0.5, _height * 0.5)
      ..cubicTo(_width * 0.14, _height * 0.1, _width * 0.05, _height * 0.4,
          _width * 0.5, _height * 0.58);
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height),
        _paint..color = Colors.white);
    _paint..color = Colors.red;
    for (int i = 0; i < _offsets.length; i++) {
      Offset offset = _offsets[i];
      canvas
      ..save()
        ..translate(offset.dx - _width * 0.5, offset.dy - _height * 0.38)
      ..drawPath(_path, _paint)
      ..restore();
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
