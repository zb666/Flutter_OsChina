import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:MyButton()
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("onTap");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).buttonColor,
        ),
        padding: EdgeInsets.all(10.0),
        child: Text('触摸反馈'),
      ),
    );
  }
}
