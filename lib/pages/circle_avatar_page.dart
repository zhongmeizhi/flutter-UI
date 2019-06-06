import 'package:flutter/material.dart';

class CircleAvatarPage extends StatefulWidget {
  @override
  _CircleAvatarPageState createState() => _CircleAvatarPageState();
}

class _CircleAvatarPageState extends State<CircleAvatarPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 55, // 圆的半径
              backgroundImage: AssetImage("assets/img/ff.png"), // 背景图片将会被剪裁
              child: Text('zmz'),
            )
          ],
        ),
      )
    );
  }
}