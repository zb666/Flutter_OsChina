import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(DynamicTheme());

class DynamicTheme extends StatefulWidget {
  @override
  _DynamicThemeState createState() => _DynamicThemeState();
}

class _DynamicThemeState extends State<DynamicTheme> {
  Brightness _brightness = Brightness.light;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var dartMap = {"first":1,"second":2};

    dartMap.forEach((key,value){

    });

//    ["1","2","3"].asMap();

  }
  var _index = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget Demo",
      theme: ThemeData(brightness: _brightness, primarySwatch: Colors.blue),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('屠龙宝刀点击就送'),
        ),
        appBar: AppBar(
          title: Text('创建导航和路由'),
          leading: GestureDetector(onTap: () {
            Navigator.pop(context);
          }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _index = index.toString();
              print("$index");
            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.access_alarm),
                icon: Icon(Icons.access_alarm),
                title: Text('首页$_index')),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.accessibility),
                icon: Icon(Icons.account_balance),
                title: Text('导航')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                activeIcon: Icon(Icons.zoom_in),
                title: Text('列表'))
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('images/tzd.png')),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (_brightness == Brightness.dark) {
                        _brightness = Brightness.light;
                      } else {
                        _brightness = Brightness.dark;
                      }
                    });
                  },
                  child: Text('切换主题'),
                ),
                Text('11111   '),
                Text('11111   '),
                Text('11111   '),
                LessGroup(),
                RouteNavigatorState(),
              ],
            )),
            Wrap(spacing: 8,runSpacing: 6,
              children: <Widget>[
                _chip("chip text test"),
                _chip("chip thhh"),
                _chip("chip child"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LessGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      alignment: Alignment.center,
      child: Text('data',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
    );
  }
}

class RouteNavigatorState extends StatefulWidget {
  @override
  _RouteNavigatorStateState createState() => _RouteNavigatorStateState();
}

class _RouteNavigatorStateState extends State<RouteNavigatorState> {
  @override
  Widget build(BuildContext context) {
    bool byNmae = false;
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          SwitchListTile(
              value: byNmae,
              onChanged: (value) {
                setState(() {
                  byNmae = value;
                });
              }),
          Text("导航")
        ],
      ),
    );
  }


  //返回类型可以自己进行推导
   _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

_chip(String label){
  return Chip(
    padding: EdgeInsets.only(left: 5),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    label: Text(label),
    avatar: CircleAvatar(
      backgroundColor: Colors.blue.shade600,
      child: Text(label,style: TextStyle(fontSize: 20)),
    ),
  );
}
