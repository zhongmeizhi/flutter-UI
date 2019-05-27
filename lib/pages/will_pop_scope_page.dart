import 'package:flutter/material.dart';

class WillPopScopePage extends StatefulWidget {
  @override
  WillPopScopePageState createState() {
    return new WillPopScopePageState();
  }
}

class WillPopScopePageState extends State<WillPopScopePage> {
  DateTime _lastPressedAt; //上次点击时间

  // 必须是 ScaffoldState 类型的 GlobalKey 才能调用
  var _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('WillPopScope'),
      ),
      body: WillPopScope(
          // 通过 willPop拦截
          onWillPop: () async {
            if (_lastPressedAt == null ||
                DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
              //两次点击间隔超过1秒则重新计时
              _lastPressedAt = DateTime.now();
              _key.currentState.showSnackBar(SnackBar(
                content: Text('SnackBar'),
              ));
              return false;
            }
            return true;
          },
          child: Container(
            alignment: Alignment.center,
            child: Text("1秒内连续按两次返回键退出"),
          )
      ),
    );
  }
}