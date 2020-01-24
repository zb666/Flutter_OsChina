import 'package:flutter/material.dart';
import 'package:flutter_osc_client/widgets/MyImage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: RaisedButton(onPressed: () {})),
        body: Column(
          children: <Widget>[
            MyImage(
                imageProvider: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"))
          ],
        ),
      ),
    );
  }
}

class GradientCircleProgressRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GradientRouteState();
  }
}

class GradientRouteState extends State<GradientCircleProgressRoute>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPaint(200.0),
    );
  }
}

class MyPaint extends CustomPainter {
  double radius;

  MyPaint(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    var mPaint = Paint()
      ..color = Colors.redAccent
      ..strokeJoin = StrokeJoin.round
      ..isAntiAlias = true
      ..strokeWidth = 8.0;
    Rect rect =
        Rect.fromCircle(center: size.center(Offset.zero), radius: radius);
    canvas.drawRect(rect, mPaint);
    canvas
      ..save()
      ..drawRect(
          Rect.fromCenter(
              center: size.center(Offset.zero),
              width: size.width,
              height: size.height),
          mPaint);
  }

  @override
  bool shouldRepaint(MyPaint oldDelegate) {
    return oldDelegate.radius != radius;
  }
}
