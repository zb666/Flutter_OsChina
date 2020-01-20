import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {

  final itemData;

  ArticleItem({this.itemData})

  @override
  Widget build(BuildContext context) {
    Row author = Row(
      children: <Widget>[

        ///expand最后摆放 相当于ll的权重
        ///填充满剩余的空间
        Expanded(child: Text.rich(TextSpan(
            text: "TextSpan",
            style: TextStyle(fontSize: 30, color: Theme
                .of(context)
                .primaryColor)
        ))),
        Text(itemData['itemDate'])
      ],
    );
    Text title = Text(
        'itemTitle', style: TextStyle(fontSize: 16.0, color: Colors.black),
        textAlign: TextAlign.left);
    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ///增加控件的内边距
        Padding(padding: EdgeInsets.all(10.0), child: author),
        Padding(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0), child: title),
        Padding(padding: EdgeInsets.all(10), child: title)
      ],
    );
    return Card(
      elevation: 4.0,
      child: column,
    );
  }

}
