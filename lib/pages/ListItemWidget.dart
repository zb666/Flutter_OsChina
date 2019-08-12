import 'package:flutter/cupertino.dart';
import 'package:vector_math/vector_math_64.dart';

class ListItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Column(children: <Widget>[
            Text(
              "item  $index",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.battery_75_percent),
                Text("newList Item $index",style: TextStyle(color: Color(0xaaaaaaaa),fontSize: 14)),
              ],
            )
          ]);
        },
        itemCount: 30);
  }
}
