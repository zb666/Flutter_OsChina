import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      routes: {'/other': (BuildContext context) => OtherPage()},
//      initialRoute: '/other',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _widgetOptions = [
    Text('信息'),
    Text('通讯录四大发明了，。你第三门， ，没多少，谁倒霉方面，但是，魔方大厦，麻烦 冻死了开发冻死了开发没料到是方面鲁大师方面里面绝对是发了没收到方面了第三方了的耍流氓发的什么库类',softWrap: true,maxLines: 1,),
    Text('发现'),
    Text('我',overflow: TextOverflow.clip,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp示例'),
//        centerTitle: true,//是否居中
        leading: Icon(Icons.star), //左侧图标
        elevation: 0.0, //阴影
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      //这里是Navigator导航的主题
      body: Center(child: _widgetOptions.elementAt(_currentIndex)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由跳转',
        foregroundColor: Color(0xffffffff),
        backgroundColor: Color(0xff000000),
        //阴影
        elevation: 0.0,
        child: Icon(Icons.arrow_forward),
//        shape: RoundedRectangleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('信息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('我'),
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: _buildDrawer(),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
//        elevation: 0.0,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/17.jpg'),
            ),
            accountName: Text('Damon'),
            accountEmail: Text('3262663349@qq.com'),
            otherAccountsPictures: <Widget>[
              Icon(Icons.camera_alt),
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tzd.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('会员特权'),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('会员特权'),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('会员特权'),
          ),
          AboutListTile(
            icon: Icon(Icons.error),
            child: Text('关于'),
            applicationName: '天之道',
            applicationVersion: '1.0',
          ),
        ],
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtherPage'),
      ),
    );
  }
}
