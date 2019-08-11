import 'package:flutter/material.dart';

class StatefulGroup extends StatefulWidget {
  @override
  _StatefulGroupState createState() => _StatefulGroupState();
}

class _StatefulGroupState extends State<StatefulGroup> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget 组件',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('基础组件'),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
