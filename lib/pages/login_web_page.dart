import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:flutter/Net';

class LoginWebPage extends StatefulWidget {
  @override
  _LoginWebPageState createState() => _LoginWebPageState();
}

class _LoginWebPageState extends State<LoginWebPage> {
  FlutterWebviewPlugin _flutterWebviewPlugin = FlutterWebviewPlugin();

  bool isloading = false;

  //mounted 如果挂在树上 就表示在widget树上

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //这里是数据的回调
    _flutterWebviewPlugin.onUrlChanged.listen((url) {
      print('LoginWebPage onUrlChanged $url');
      //看是否是挂载在widget树上 类似Android的context是否为空的判断
      if (mounted) {
        setState(() {
          isloading = false;
        });
      }
      //这里做url的监听
      if (url != null && url.length > 0 && url.contains('?code=')) {
        //登录成功了
        // ignore: unnecessary_statements
        String code = url.split('?')[1].split('&')[0].split('=')[1];
        Map<String, dynamic> params = Map();
        params['client_id'] = "Appid";
        params['client_secret'] = "Secret_Id";
        params['code'] = "$code";
        //解析登录成功的数据,然后获取Token
//        NetUtils.get ("url",params).then((回调的data){
//        print("$data");
        //if(data!=null){
        //} 进行打印 获取到Token
        //json解析->返回Map ->持久化保存 Sp持久化
//        });

      //弹出路由 并且返回refresh 通知界面刷新数据

        _login();
      }
    });

    }

  void _login() async{
    //登录成功之后  去获取用户的数据
    var result = Navigator.of(context).push(MaterialPageRoute(builder:((context)=>LoginWebPage())));
    //这里需要去获取到用户的数据

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _flutterWebviewPlugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "url",
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('登录开源中国', style: TextStyle(color: Colors.green)),
            //
          ],
        ),
      ),
      withJavascript: true,
      //运行本次存储
      withZoom: true,
      //页面 网页的缩放
      withLocalStorage: true,
    );
  }
}
