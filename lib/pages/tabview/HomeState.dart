import 'package:flutter/material.dart';
import 'package:flutter_osc_client/pages/tabview/HomePage.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeWidget(),
    );
  }
}


