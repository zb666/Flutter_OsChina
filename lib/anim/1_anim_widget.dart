import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _doubleAnim;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
    AnimationController(vsync: this, duration: const Duration(seconds: 1))
      ..forward();
    _doubleAnim = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyLogo(
          animation: _doubleAnim,
        ),
      ),
    );
  }
}

/**
 * 这是动画的组件
 */
class MyLogo extends AnimatedWidget{

  final Tween<double> _rotateAnim = new Tween<double>(begin: 0.0,end: 20.0);
  final Tween<double> _scaleAnim = new Tween<double>(begin: 1.0,end: 10.0);
  final Tween<Color> _colorAnim = new Tween<Color>(begin: Colors.white,end: Colors.blue);

  //animationcontroller本身就是继承自Animation的
  MyLogo({Key,key,@required Animation animation})
      :super(key:key,listenable:animation);

  @override
  Widget build(BuildContext context) {
    //这里多态的关系 控制器需要外界来给与
    final Animation<double> animation = listenable;
    //通过transform进行各项动画的组合
    //AnimatedWidget 自身就是一个widget组件
    return Transform.scale(
      scale: _scaleAnim.evaluate(animation),
      child: Transform.rotate(
          angle: _rotateAnim.evaluate(animation),
        child: FlutterLogo(),
      ),
    );
  }
}

