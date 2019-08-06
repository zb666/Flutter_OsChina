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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget Demo",
      theme: ThemeData(brightness: _brightness, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('创建导航和路由'),
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
              ],
            ))
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
      child: Column(
        children: <Widget>[
          SwitchListTile(value: byNmae, onChanged: (value){
            setState(() {
              byNmae = value;
            });
          })
        ],
      ),
    );
  }
}


