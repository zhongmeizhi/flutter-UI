import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: Column(
        children: <Widget>[
          Text('Navigator的高度为infinity'),
          Text('如果直接父级非最上级也是infinity会产生异常'),
          Container(
            height: 333,
            color: Colors.amber.withAlpha(111),
            child: Navigator( // Navigator
              initialRoute: '/abc',
              onGenerateRoute: (val) {
                RoutePageBuilder builder;
                switch (val.name) {
                  case '/abc':
                    builder = (BuildContext nContext, Animation<double> animation, Animation<double> secondaryAnimation) => Column(
                      // 并没有在 MaterialApp 中设定 /efg 路由
                      // 因为Navigator的特性 使用nContext 可以跳转 /efg
                      children: <Widget>[
                        Text('呵呵呵'),
                        RaisedButton(
                          child: Text('去 /efg'),
                          onPressed: () {
                            Navigator.pushNamed(nContext, '/efg');
                          },
                        )
                      ],
                    );
                  break;
                  case '/efg':
                    builder = (BuildContext nContext, Animation<double> animation, Animation<double> secondaryAnimation) => Row(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('去 /hhh'),
                          onPressed: () {
                            Navigator.pushNamed(nContext, '/hhh');
                          },
                        )
                      ],
                    );
                  break;
                  default:
                    builder = (BuildContext nContext, Animation<double> animation, Animation<double> secondaryAnimation) => Center(
                      child: RaisedButton(
                        child: Text('去 /abc'),
                        onPressed: () {
                          Navigator.pushNamed(nContext, '/abc');
                        },
                      )
                    );
                }
                return PageRouteBuilder(
                  pageBuilder: builder,
                  // transitionDuration: const Duration(milliseconds: 0),
                );
              },
              // onUnknownRoute: (val) {
              //   print(val);
              // },
              observers: <NavigatorObserver>[]
            ),
          ),
          Text('Navigator执行寻找路由顺序'),
          Text('initialRoute'),
          Text('onGenerateRoute'),
          Text('onUnknownRoute'),
        ],
      ),
    );
  }
}