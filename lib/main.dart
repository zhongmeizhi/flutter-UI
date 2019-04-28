import 'package:flutter/material.dart';
// 路由
import 'package:flutter_ui/routes/my_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '蘑菇碳UI',
      debugShowCheckedModeBanner: false, // 开发环境删除右上角角标
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      routes: MyRouter.routes, // 页面路由
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    // 路由跳转按钮
    Widget _linkButton(text, routeName) {
      return RaisedButton(
        child: Text(text),
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        }
      );
    }

    // 遍历路由为按钮
    List<Widget> items = [];
    MyRouter.routes.forEach((key, val) => (
      items.add(_linkButton(key.replaceFirst('/', '').replaceFirst('_page', ''), key))
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Widget清单'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        child: Wrap(
          spacing: 6.0,
          children: items,
        ),
      )
    );
  }
}

