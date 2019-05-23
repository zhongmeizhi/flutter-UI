import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  _TabBarViewPageState createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> with TickerProviderStateMixin {
  
  int len = 3;

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(initialIndex: 0, length: len, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarView'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('TabBarView 和 PageView很像'),
            Text('不支持方向倒序'),
            Text('不支持动态加载'),
            Container(
              height: 333,
              width: 333,
              child: TabBarView(
                controller: _tabController,
                children: List.generate(len, (idx) => Container(
                    margin: EdgeInsets.all(11),
                    color: Colors.cyan.withAlpha(55),
                    child: Text('TabBarView ${idx.toString()}'),
                  )
                ),
              )
            ),
            Text(_tabController.toString())
          ],
        ),
      ),
    );
  }
}