import 'package:flutter/material.dart';
import 'dart:ui' as ui show ImageFilter;

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('正常图片'),
            Image.asset(
              'assets/img/ff.png',
              fit: BoxFit.fill,
              width: 111,
              height: 111
            ),
            Text('BackdropFilter高斯模糊后'),
            Text('利用IgnorePointer点击后面图片'),
            Stack(
              children: <Widget>[
                GestureDetector(
                  child: Image.asset(
                    'assets/img/ff.png',
                    fit: BoxFit.fill,
                    width: 111,
                    height: 111
                  ),
                  onTap: () {
                    print('被点击了');
                  },
                ),
                IgnorePointer( // IgnorePointer会拦截将要进入自己内部的触摸事情
                  ignoring: true,
                  child: BackdropFilter(
                    // 导入 import 'dart:ui' as ui show ImageFilter; 
                    filter: ui.ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      color: Colors.white.withOpacity(0.1),
                      width: 111,
                      height: 111,
                    ),
                  )
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}