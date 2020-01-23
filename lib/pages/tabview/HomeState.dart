import 'package:flutter/material.dart';
import 'package:flutter_osc_client/pages/tabview/HomePage.dart';
import 'package:flutter_osc_client/pages/tabview/TabScaffoldState.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            child: BobTabView(),
          ),
        ),
//      child: BobTabView()
    );
  }
}


