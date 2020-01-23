import 'package:flutter/material.dart';
import 'package:flutter_osc_client/day_review/widget/OnePage.dart';

class NewRoute extends StatefulWidget {
  @override
  _NewRouteState createState() => _NewRouteState();
}

class _NewRouteState extends State<NewRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: RaisedButton(
        child: Text("This is new route page"),
        onPressed: (){
          Navigator.pushNamed(context, "page_article");
        },
      ),
    );
  }
}
