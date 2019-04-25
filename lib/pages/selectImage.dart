import 'package:flutter/material.dart';
import 'package:flutter_osc_client/constants/constants.dart' show AppColors;
import 'package:flutter_osc_client/home_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

class SelectImage extends StatefulWidget {
  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  List<File> imageList = new List<File>();

  Future<File> _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('i am piackage')),
      primary: true,
      body: getBody(),
      //点击之后 从相册从获取图片
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        tooltip: 'pick image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

//这里默认值就是Furure
  Future _getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (imageList.length > 9) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('最多只能添加9张图片')));
    }
    setState(() {
      this.imageList.add(image);
      _imageFile = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }

  bool showLoadingDialog() => imageList.length == 0;

  Widget getBody() => showLoadingDialog() ? getProgressDialog() : getListView();

  Widget getProgressDialog() => Center(child: CircularProgressIndicator());

  ListView getListView() => ListView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) => 
          Image.file(imageList[index], height: 200, width: 200));
}
