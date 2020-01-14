import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with SingleTickerProviderStateMixin {
  List<String> tabTitleList = [];

  TabController _tabController;

  @override
  void initState() {
    initTabData();
    _tabController = TabController(length: tabTitleList.length, vsync: this);
    super.initState();
  }

  initTabData() {
    tabTitleList = ["首页", "热点页", "我的页"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 38,
            color: Color(0xfff4f5f6),
            child: TabBar(
                controller: _tabController,
                tabs: tabTitleList.map((item) {
                  return Tab(text: item);
                }).toList()),
          ),
          Expanded(
              child: TabBarView(
            children: tabTitleList.map((item) {
              return Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[Text(item, textAlign: TextAlign.center)],
                ),
              );
            }).toList(),
            controller: _tabController,
          ))
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

}
