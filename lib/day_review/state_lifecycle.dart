import 'package:flutter/material.dart';
import 'package:flutter_osc_client/day_review/route/NewRoute.dart';
import 'package:flutter_osc_client/widgets/page_collects.dart';

void main() => runApp(ArticleApp());

class ArticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => SplashPage()},
    );
  }
}
