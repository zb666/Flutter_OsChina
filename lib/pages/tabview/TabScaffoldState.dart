import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_osc_client/pages/discovery_page.dart';

class BobTabView extends StatefulWidget {
  @override
  _BobTabViewState createState() => _BobTabViewState();
}

class _BobTabViewState extends State<BobTabView>
    with SingleTickerProviderStateMixin {
  List<String> tabTitles = ["首页", "热点", "我的"];

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: tabTitles.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Offstage(
          child: Text("AppTitle",textAlign: TextAlign.justify),
        )
      ),
        body: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
            height: 50,
            color: Colors.blue,
            child: TabBar(
              indicatorPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              tabs: tabTitles.map((String itemTitle) {
                return Text("$itemTitle");
              }).toList(),
              controller: _tabController,
            )),
        Expanded(
            child: TabBarView(
          children: tabTitles.map((String item) {
            return Container(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  DiscoveryPage()
                ],
              ),
            );
          }).toList(),
          controller: _tabController,
        ))
      ],
    ));
  }

  @override
  void dispose() {
    super.dispose();
    if (mounted) {
      _tabController.dispose();
    }
  }
}
