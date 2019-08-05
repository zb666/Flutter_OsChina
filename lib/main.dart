import 'package:flutter/material.dart';
import 'package:flutter_osc_client/constants/constants.dart' show AppColors;
import 'package:flutter_osc_client/pages/ListItemWidget.dart';
import 'package:flutter_osc_client/pages/WidgetPage.dart';
import 'package:flutter_osc_client/pages/selectImage.dart';
import 'package:flutter_osc_client/home_page.dart';
import 'package:flutter_osc_client/pages/HomePage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉右上角debug标签
      title: '开源中国',
      theme: ThemeData(
        primaryColor: Color(AppColors.APP_THEME),
      ),
//      home: Home_Page(),
      home: ListItem(),
    );
  }
}

class MyStfWidget extends StatefulWidget {
  @override
  _MyStfWidgetState createState() => _MyStfWidgetState();
}

class _MyStfWidgetState extends State<MyStfWidget> {
  File _image;

  getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      this._image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('i am picker example')),
      body: Center(
          child:
              _image == null ? Text('no image selected') : Image.file(_image)),
      floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          shape: CircleBorder(side: BorderSide.none),
          tooltip: "开启新界面",
          child: Icon(Icons.add_a_photo)),
    );
  }
}
