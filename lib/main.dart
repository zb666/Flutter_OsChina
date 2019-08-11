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

import 'models/stateful_group_page.dart';

void main() => runApp(StatefulGroup());

const CITY_NAMES = [
  '北京',
  '香港',
  '杭州',
  '苏州',
  '成都',
  "宁波",
  "广州",
  "苏州",
  "北京",
  "江苏",
  "台湾"
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my title",
      home: Scaffold(
          appBar: AppBar(
            title: Text(null ?? '数据为空'),
          ),
//        body: ListView(
//          reverse: true,
//          children: _buildList(),
//        ),
          body: StatefulGroup()//GridView.count(crossAxisCount: 2, children: _buildList())),
     )
    );
  }
}

_buildList() => CITY_NAMES.map((city) => _item(city)).toList();

Widget _item(String city) {
  return Container(
    height: 80,
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(color: Colors.teal),
    child: Text(city, style: TextStyle(color: Colors.white, fontSize: 20)),
  );
}

class ImagePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('imagepicker')),
    );
  }
}
