import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State with TickerProviderStateMixin {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Scaffold'),
        // leading: Icon(Icons.palette), // 会替换掉默认的回退按钮
        automaticallyImplyLeading: true,  // 是否自动出现回退按钮
        // actions: <Widget>[ Icon(Icons.account_balance) ], // 和 endDrawer 有冲突
        flexibleSpace: Center(
          child: Container(
            width: 222,
            height: 1,
            child: Icon(Icons.pageview),
          ),
        ),
        bottom: TabBar(
          controller: TabController(length: 2, vsync: this),
          tabs: <Widget>[
            Tab(
              text: 'TabBar-1',
              icon: Icon(Icons.account_circle),
              // child: Text('TabBar-1'),
            ),
            Tab(
              icon: Icon(Icons.adb),
              child: Text('TabBar-2'),
            ),
          ],
        ),
        elevation: 55,
        backgroundColor: Colors.blue,
        brightness: Brightness.dark, // 最上边手机其他信息栏
        iconTheme: IconThemeData(color: Colors.red, opacity: 0.8, size: 0.6),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.red)
        ),
        primary: true,
        centerTitle: true,  // 文本居中哇
        titleSpacing: NavigationToolbar.kMiddleSpacing, // 只有1个选项
        toolbarOpacity: 0.7, // 整栏
        bottomOpacity: 0.8
      ),
      body: Container(),
      floatingActionButton: IconButton( // 自带页面浮动按钮
        icon: Icon(Icons.power, size: 55,),
        onPressed: () {
          // _scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('要充电啦'),));
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return BottomSheet(
                builder: (BuildContext context) {
                  return Container(
                    height: 222,
                    // child: CloseButton(),
                    child: Text('showModalBottomSheet 咯'),
                  );
                },
                onClosing: () {},
              );
            },
          ).then((val) {
              print(val);
          });
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // 设定按钮位置
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,   // 好像只有这一个选项。。。
      persistentFooterButtons: [    // 底部按钮
        OutlineButton(onPressed: (){}, child: Text('persistentFooterButtons')),
      ],
      // drawer: null,  // 和endDrawer相反，但是会把自带的 ← 给替换掉
      endDrawer: Drawer(  // endDrawer 和 actions 有冲突
        elevation: 3.0,
        semanticLabel: String.fromCharCode(123),
        child: Container(
          color: Colors.pink,
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Text('DrawerHeader'),
              ),
              Text('body')
            ],
          ),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('雪花')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text('人')
          ),
        ]
      ),
      // 一般主动使用: showModalBottomSheet
      // bottomSheet: BottomSheet(
      // ),
      backgroundColor: Colors.cyan, // 脚手架背景色
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      primary: true, // 头部会变
      // drawerDragStartBehavior: DragStartBehavior.down,
      // body: Container(),
    );
  }
}