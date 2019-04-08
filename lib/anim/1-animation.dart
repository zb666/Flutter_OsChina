import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  Animation<double> _doubleAnim;

  String _animValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: const Duration(seconds: 3));
    _doubleAnim = Tween(begin: 0.0,end: 1.0).animate(_animationController)
    ..addListener((){
        print(_doubleAnim.value.toString());
        setState(() {
          _animValue = _doubleAnim.value.toString();
        });
    })
    ..addStatusListener((status){
//      if(status == AnimationStatus.completed){
//        _animationController.reverse();
//      }else if(status == AnimationStatus.dismissed){ dismiss是初始化的状态
//        _animationController.forward();
//      }
//      print('$status');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_animValue??='0.0'),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        _animationController.forward(from: 0.0); //从0 开始进行动画的播放
      },child: Icon(Icons.play_arrow)),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

}