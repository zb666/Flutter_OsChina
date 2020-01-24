import 'package:flutter/material.dart';

class HeroRouteAnimB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
          tag: "bobhero",
          child: Image.asset("assets/images/cover_img.jpg")),
    );
  }
}
