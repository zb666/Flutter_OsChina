import 'package:flutter/material.dart';

class PluginUserPage extends StatefulWidget {
  @override
  _PluginUserPage createState() => _PluginUserPage();
}

class _PluginUserPage extends State<PluginUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('制作插件'),
       leading: GestureDetector(
         onTap: (){
           Navigator.pop(context);
         },
         child: Icon(Icons.arrow_back),
       ),
     ),
      body: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 1,
      ),
    );
  }
}
