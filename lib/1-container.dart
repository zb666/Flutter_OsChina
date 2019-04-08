import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return FlatButton(
          child: Padding(padding: EdgeInsets.all(30),child: Text('点击->弹窗')),
          onPressed: () {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Hello i am snackbar')));
          },
        );
      }),
    );
  }
}
