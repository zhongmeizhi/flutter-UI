import 'package:flutter/material.dart';
// 路由
import 'package:flutter_ui/routes/my_router.dart';
// 国际化
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // typedef WidgetBuilder = Widget Function(BuildContext context);
    Map<String, WidgetBuilder> routes = new Map<String, WidgetBuilder>();
    
    routes.addAll(MyRouter.layoutRoutes);
    routes.addAll(MyRouter.formRoutes);
    routes.addAll(MyRouter.popupRoutes);
    routes.addAll(MyRouter.functionalRoutes);
    routes.addAll(MyRouter.decorateRoutes);
    routes.addAll(MyRouter.combRoutes);

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Widget清单'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 22.0),
          children: <Widget>[
            _layoutRoutesWrap(_linkButton),
            _formRoutesWrap(_linkButton),
            _popupRoutesWrap(_linkButton),
            _functionalRoutesWrap(_linkButton),
            _decorateRoutesWrap(_linkButton),
            _combRoutesWrap(_linkButton),
          ],
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

// 不知道 怎么 MyRouter['layoutRoutes']

Widget _layoutRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.layoutRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('布局类Widget', items);
}

Widget _formRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.formRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('表单类Widget', items);
}

Widget _popupRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.popupRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('弹出类Widget', items);
}

Widget _functionalRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.functionalRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('功能类Widget', items);
}

Widget _decorateRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.decorateRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('修饰类Widget', items);
}

Widget _combRoutesWrap (_linkButton) {
  List<Widget> items = [];
  MyRouter.combRoutes.forEach((routeName, val) => (
    items.add(_linkButton(routeName))
  ));
  return _routeWarp('组合类Widget', items);
}