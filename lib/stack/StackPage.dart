import 'package:flutter/material.dart';

void main() => runApp(StackPage());

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image实例"),
        ),
          body: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(child: Image.network(
                    'https://www.baidu.com/img/bd_logo1.png?where=super',
                    height: 100.0,
                    width: 100.0),left: 18),
                Positioned(
                  child: Text('your friend',style: TextStyle(color: Colors.black),),
                  top: 30,
                )
              ],
            ),
          ))
    );
  }
}
