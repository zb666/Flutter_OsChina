import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

//_login() async{
// Navigator.push(MaterialPageRouter(builder:(context)=>LoginWebPage()}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //eventBus 登录成功的全局刷新||退出登录
    //eventBus.on<LoginEvent>().listen((event){})
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Container(
        height: 150,
        child: Center(),
      ),
    );
  }
}
