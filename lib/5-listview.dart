import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: ListView(
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//            ListTile(title: Text("border"), subtitle: Text("sub title"))
//          ],
//        ),
//      ),
//    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: AppBar(title: Text('ListView例子')),
        ),
        body: new HorListView(),
      ),
    );
    return HorListView();
  }
}

class HorListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(100, (index) {
        return Text('$index', style: TextStyle(fontSize: 20.0), maxLines: 2);
      }),
    );
  }
}
