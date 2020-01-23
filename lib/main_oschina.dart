import 'package:flutter/material.dart';
import 'package:flutter_osc_client/constants/constants.dart' show AppColors;
import 'package:flutter_osc_client/home_page.dart';

void main() => runApp(MyApp());
int _lastClick = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: null,
        onWillPop: () async {
          if (_lastClick == 0) {
            _lastClick = DateTime.now().second;
            return false;
          }

        });
//    return MaterialApp(
//      debugShowCheckedModeBanner: false, //去掉右上角debug标签
//      title: '开源中国',
//      theme: ThemeData(
//        primaryColor: Color(AppColors.APP_THEME),
//      ),
//      home: HomePage(),
//    );
  }
}
