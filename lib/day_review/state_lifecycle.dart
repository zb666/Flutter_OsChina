
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(ArticleApp());

class ArticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: MyStfWIdget(),
            ),
          body: MyStfWIdget(),
    ));
  }
}

class MyStfWIdget extends StatefulWidget {
  @override
  _MyStfWidgetState createState() => _MyStfWidgetState();
}

class _MyStfWidgetState extends State<MyStfWIdget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Text Data")
    );
  }
}

