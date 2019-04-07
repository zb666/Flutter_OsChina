import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView BuildItem')),
        body: ListView.builder(itemBuilder: buildItem),
      ),
    );
  }

  Widget buildItem(BuildContext buildContext, int index) {
    if (index.isOdd) {
      return Divider();
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        //主轴
        mainAxisAlignment:MainAxisAlignment.center,
        //交叉轴
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text('横向的布局',textDirection: TextDirection.rtl),
        Image.network(
          //asset/images/tzd.jpg
          'https://img3.doubanio.com\/view\/celebrity\/s_ratio_celebrity\/public\/p1519794715.93.webp',
          width: 100,
          height: 100,
          filterQuality: FilterQuality.high,
        ),
      ],),
    );
  }
}

