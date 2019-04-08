import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title of App',
      routes: {'/other': (context) => OtherPage()},
      home: StlPage(),
    );
  }
}

class StlPage extends StatefulWidget {
  @override
  _StlPageState createState() => _StlPageState();
}

class _StlPageState extends State<StlPage> {
  int _currentIndex = 0;

  final _widgetOptions = [Text('信息栏',textAlign: TextAlign.center), Text('通讯录',textAlign: TextAlign.center), Text('发现',textAlign: TextAlign.center), Text('我',textAlign: TextAlign.center)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MtApp实例代码'),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由跳转',
        elevation: 0.0,
        foregroundColor: Color(0xffffffff),
        backgroundColor: Color(0xff000000),
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.contacts),title:Text('联系人',textDirection: TextDirection.rtl,)),
        BottomNavigationBarItem(icon: Icon(Icons.mms),title:Text('信息',textAlign: TextAlign.center)),
        BottomNavigationBarItem(icon: Icon(Icons.find_in_page),title:Text('发现',textAlign: TextAlign.center)),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),title:Text('我的',textAlign: TextAlign.center)),
      ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            //局部刷新 数据驱动UI驱动UI发生变化
            _currentIndex = index;
          });
        },
      ),

    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('i am otherpage')));
  }
}
