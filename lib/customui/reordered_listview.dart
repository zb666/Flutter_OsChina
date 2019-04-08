import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  List _list = List.generate(20, (index) => 'Item + $index');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(elevation: 1.0, title: Text('appBar的标题')),
        body: ReorderableListView(
          onReorder: _onReorder, //这里会给与回调
          children: _list
              .map((m) => ListTile(
                    subtitle: Text('title $m',
                        softWrap: true, textAlign: TextAlign.center),
                    key: ObjectKey(m),
                  ))
              .toList(),
        ));
  }

  void _onReorder(int oldIndex, int newIndex) {
    print('oldIndex $oldIndex newIndex $newIndex');
    setState(() {
      if (newIndex == _list.length) {
        newIndex = _list.length - 1;
      }
      var removedItem = _list.removeAt(oldIndex);
      _list.insert(newIndex, removedItem);
    });
  }
}
