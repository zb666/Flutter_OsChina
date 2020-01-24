import 'package:flutter/material.dart';

class HeroRadiusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Ink(
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(Radius.circular(25.0))
          ),
          child: InkWell(
            onTap: (){

            },
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            child: Container(
              alignment: Alignment.center,
              width: 300.0,
              height: 50.0,
              child: Text("圆角按钮",
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
