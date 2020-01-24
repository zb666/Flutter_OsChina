import 'package:flutter/material.dart';
import 'package:flutter_osc_client/widgets/HeroAnimRouteB.dart';
import 'package:flutter_osc_client/widgets/HeroRadiusWidget.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder:
                (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
              return FadeTransition(
                  opacity: animation,
                  child: Scaffold(
                      appBar: AppBar(title: Text('原图')),
                      body: HeroRadiusWidget()
                  )
              );
            }));
          },
          child: Hero(
              tag: "bobhero",
              child: ClipOval(
                child: Image.asset("assets/images/dianzhu.png", height: 100),
              )),
        ));
  }
}
