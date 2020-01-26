import 'package:flutter/material.dart';
import 'package:flutter_osc_client/redux/AsyncAdd_BT.dart';
import 'package:flutter_osc_client/redux/second_page.dart';

class FirstPage extends StatelessWidget {
  String title;

  FirstPage(this.title) : super();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('First Page'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                maxLines: 1,
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            AsyncBt(title, 2),
            RaisedButton(
                child: Text(
                  '跳转到第二页',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return SecondPage('第二页');
                  }));
                })
          ],
        ),
      ),
    );
  }
}
