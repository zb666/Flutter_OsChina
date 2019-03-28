import 'package:flutter/cupertino.dart';

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class InnerA extends StatefulWidget {
  @override
  _InnerAState createState() => _InnerAState();
}

class _InnerAState extends State<InnerA> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


