import 'package:flutter/material.dart';

class StatefulGroup extends StatefulWidget {
  @override
  _StatefulGroupState createState() => _StatefulGroupState();
}

class _StatefulGroupState extends State<StatefulGroup> {
  int _currentIndex = 0;

  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget 组件',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text('StateFulPage组件集合')),
          body: _currentIndex == 0
              ? RefreshIndicator(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.blue),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Image.network('http://www.devio.org/img/avatar.png',
                                height: 50, width: 100),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  hintText: 'TextField使用',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 10),
                              child: PageView(
                                pageSnapping: true,
                                scrollDirection: Axis.vertical,
                                controller: PageController(initialPage: 1),
                                children: <Widget>[
                                  _item('item111', Colors.blue),
                                  _item('item222', Colors.red),
                                  _item('item333', Colors.yellow)
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FractionallySizedBox(
                                    widthFactor: 1,
                                    child: Wrap(
                                      alignment: WrapAlignment.center,
                                      children: <Widget>[
                                        Text('data center',
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ))
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Image.network(
                                    'http://www.devio.org/img/avatar.png',
                                    width: 100,
                                    height: 100),
                                Positioned(
                                  child: Image.network(
                                      'http://www.devio.org/img/avatar.png',
                                      width: 50,
                                      height: 50),
                                  left: 20,
                                  top: 20,
                                )
                              ],
                            ),
                            Wrap(spacing: 8, runSpacing: 8, children: <Widget>[
                              _item('item222', Colors.red),
                              _item('item111', Colors.blue),
                              _item('item333', Colors.yellow)
                            ]),
                            // Expanded(child: Text('宽度填充'))
                            Row(
                              children: <Widget>[
                                Text('列表'),
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(color: Colors.teal),
                                  child: Text('Row->expand 填充满屏幕'),
                                ))
                              ],
                            ),
                            Chip(
                                label: Text('label'),
                                avatar: CircleAvatar(
                                  child: Text('Chip Data',
                                      style: TextStyle(fontSize: 5,height: 50)),
                                  radius: 5,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
//                  child: ListView.builder(
//                      itemBuilder: (context, index) {
//                        return Wrap(children: <Widget>[
//                          Image.network(
//                            'http://www.devio.org/img/avatar.png',
//                            height: 50,
//                            width: 100,
//                          )
//                        ]);
//                      },
//                      itemCount: _itemCount),
                  onRefresh: _handleRefresh)
              : Text('列表loading...')),
    );
  }

  Future<void> _handleRefresh() async {
    await Duration(seconds: 3);
    setState(() {
      _itemCount++;
    });
  }
}

_item(String content, MaterialColor materialColor) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(color: materialColor),
    child: Text(content),
  );
}
