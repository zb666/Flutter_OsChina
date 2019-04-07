import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(50.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(50.0),
            3: FixedColumnWidth(50.0),
          },
          border: TableBorder.all(
            color: Color(0xffff0000),
            width: 2.0,
          ),
          children: const <TableRow>[
            TableRow(children: [
              Text('头像'),
              Text('姓名'),
              Text('年龄'),
              Text('身高'),
            ]),
            TableRow(children: [
              Icon(Icons.description),
              Text('10号技师'),
              Text('21'),
              Text('164'),
            ]),
            TableRow(children: [
              Icon(Icons.description),
              Text('10号技师'),
              Text('21'),
              Text('164'),
            ]),
            TableRow(children: [
              Icon(Icons.description),
              Text('10号技师'),
              Text('21'),
              Text('164'),
            ]),
          ],
        ),
      ),
    );
  }
}
