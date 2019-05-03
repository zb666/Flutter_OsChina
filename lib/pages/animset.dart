import 'package:flutter/material.dart';

void main() => runApp(AnimSet());

class AnimSet extends StatefulWidget {
  @override
  _AnimSetState createState() => _AnimSetState();
}

class _AnimSetState extends State<AnimSet> {
  final List<String> _list = List.generate(20, (index) => "item $index");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:AppBar(

        ) ,
    );
  }

}
