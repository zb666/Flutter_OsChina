import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Text("Row ChildRen",style: TextStyle(fontSize: 20)),
              Icon(Icons.message,color: Colors.blue)
            ],
          )
        ],
      )
    );
  }
}
