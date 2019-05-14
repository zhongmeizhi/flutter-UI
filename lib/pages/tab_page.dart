import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {

  int _len;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _len = 5;
    _tabController = TabController(length: _len, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    // 首先with TickerProviderStateMixin
    // 然后 TabBar + TabController + TabBarView

    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TabBar(
              controller: _tabController,
              labelColor: Colors.cyan,
              isScrollable: true,
              // indicator 就是下横杠
              indicatorColor: Colors.cyan,
              indicatorWeight: 2.5,
              indicatorPadding: EdgeInsets.all(0),
              indicator: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.deepOrange, width: 3.3)),
                // borderRadius: BorderRadius.all(Radius.circular(22))
              ),
              tabs: List.generate(_len, (val) => Tab(
                text: 'TabBar-:' + val.toString(),
                // icon: Icon(Icons.account_circle),
                // child: Text('TabBar-1'),
              )).toList(),
              onTap: (val) {
                print(val);
              }
            ),
            Container(
              height: 200,
              color: Colors.cyan.withAlpha(55),
              child: TabBarView(
                controller: _tabController,
                children: List.generate(_len, (val) => Tab(
                  text: 'TabBarView -:' + val.toString(),
                )).toList()
              )
            ),
          ],
        ),
      )
    );
  }
}