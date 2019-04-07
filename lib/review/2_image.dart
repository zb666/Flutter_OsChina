import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '''App的's Title''',
      home: Scaffold(
        appBar: AppBar(title: Text('Image实例')),
        body: Center(
            child: Column(
          children: <Widget>[
            Image.network(
              'https://www.baidu.com/img/bd_logo1.png?where=super',
              height: 100.0,
              width: 100.0,
            ),
            Image.asset('assets/images/dianzhu.png', height: 200.0, width: 200.0),
            _MomoryImageWidget(),
            FileImageWidget()
          ],
        )),
      ),
    );
  }
}

//自己实现的三级缓存
class _MomoryImageWidget extends StatefulWidget {
  @override
  _MomoryImageWidgetState createState() => _MomoryImageWidgetState();
}

class _MomoryImageWidgetState extends State<_MomoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    super.initState();
    rootBundle.load('images/tzd.png').then((data) => {
          setState(() {
            bytes = data.buffer.asUint8List();
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        image: bytes == null
            ? null
            : DecorationImage(image: MemoryImage(bytes, scale: 1.0)));
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: decoration,
    );
  }
}

class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _imageFile;

  Future getImage() async {
    var imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //center 代表的将空间进行中心位置的摆放 相当于alignitem center
        Center(
            child: _imageFile == null
                ? Text('未设置过控件哦')
                : Image.file(_imageFile, width: 200.0, height: 200.0)),
        FlatButton(
          onPressed: getImage,
          child: Text('点击选择图片',
              style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.lightBlue)),
        )
      ],
    );
  }
}
