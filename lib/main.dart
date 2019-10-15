import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// 路由
import 'package:flutter_ui/routes/my_router.dart';
// 国际化
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // 拼Routes
    Map<String, WidgetBuilder> routes = new Map<String, WidgetBuilder>();
    MyRouter.routes.forEach((val) => routes.addAll(val['route']));

    return MaterialApp(
      title: '蘑菇碳UI',
      debugShowCheckedModeBanner: false, // 开发环境删除右上角角标
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      routes: routes, // 页面路由
      localizationsDelegates:  [ // 本地化代理
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CN'), // 中文简体
        // const Locale('en', 'US'), // 美国英语
        //其它Locales
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // 路由跳转按钮
    Widget _linkButton(String routeName) {
      return RaisedButton(
        child: Text(routeName.replaceFirst('/', '').replaceFirst('_page', '')),
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        }
      );
    }
    
    Widget _wrapWidget (name, routes) {
      List<Widget> items = [];
      routes.forEach((routeName, val) => (
        items.add(_linkButton(routeName))
      ));
      return _routeWarp(name, items);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Widget清单'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 22.0),
          children: MyRouter.routes.map(
            (val) =>_wrapWidget(val['name'], val['route'])
          ).toList()
        ),
      )
    );
  }
}

Widget _routeWarp(text, items) {
  return Column(
    children: <Widget>[
      Text(text),
      Wrap(
        alignment: WrapAlignment.start,
        spacing: 6.0,
        children: items,
      ),
      PopupMenuDivider(),
    ],
  );
}
