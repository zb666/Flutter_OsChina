import 'package:flutter/widgets.dart';
import 'package:flutter_osc_client/constants/constants.dart' show AppColors;

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {

  var movieName = "肖申克的救赎";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(AppColors.APP_THEME),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(alignment:Alignment.center,height: 120.0,margin: const EdgeInsets.all(10.0)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("电影名称$movieName",overflow: TextOverflow.ellipsis),
              Text("BrainCo$movieName",overflow: TextOverflow.clip),
            ],
          ))
        ],
      ),
    );
  }
}
