import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text示例'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(Icons.person),
//              SizedBox(
//                height: 10.0,
//              ),
//              IconButton(icon: Icon(Icons.error), onPressed: () {}),
//              Container(
//                height: 10.0,
//                color: Colors.blue,
//              ),
//            ],
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Text("哈哈", textAlign: TextAlign.right),
              ),
              Icon(Icons.person_add),
              SizedBox(
                height: 10.0,
              ),
              IconButton(
                  iconSize: 22.0,
                  alignment: Alignment.center,
                  onPressed: () => {
                        //输出函数
                      },
                  tooltip: '这是一个提示',
                  icon: Icon(Icons.ac_unit))
            ],
          ),
        ),
      ),
    );
  }
}
