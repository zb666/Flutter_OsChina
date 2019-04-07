import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Title App",
//      home: MyScaffold())
    home: MyApp(),
    routes: <String,WidgetBuilder>{
      '/a':(context)=>MyPage(),
      '/b':(context)=>MyPage(),
    }
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text实例'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //clip 超出部分截断
              //softWrap 自动换行
              Text(
                '受人尊敬的企业',
                maxLines: 2,
                overflow: TextOverflow.fade,
                softWrap: true,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.wavy),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: '一家受人尊敬的企业',
                    style: TextStyle(color: Color(0xffff0000), fontSize: 20.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: '我们的宗旨',
                          //..是集联的 类似build模式，给属性赋值完毕 返回的还是其benhseng
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String url =
                                  "https://flutterchina.club/widgets-intro/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              }
                            })
                    ]),
              ),
              IconButton(icon: Icon(Icons.error), onPressed: () {}),
              Container(
                height: 10.0,
                color: Colors.blue,
              ),
              RaisedButton(
                //这是一个函数
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//StatelessWidget初始化之后就不会发生改变了 StatefulWidget setState()可以改变状态

class MyAppBar extends StatelessWidget {
  Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        //null 禁用 button
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), tooltip: 'menu', onPressed: null),
          Expanded(child: title),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
              //()中 的标题
              title: Text('Example title',
                  //()中的style样式设置
                  style: Theme.of(context).primaryTextTheme.title))
        ],
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child: Text('中间的文字',maxLines: 2,textDirection: TextDirection.ltr,softWrap: true));
  }
}

