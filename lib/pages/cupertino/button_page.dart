import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosButtonPage extends StatefulWidget {
  @override
  _IosButtonPageState createState() => _IosButtonPageState();
}

class _IosButtonPageState extends State<IosButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosButtonPage'),
      ),
      body: ListView(
        padding: EdgeInsets.all(22),
        children: <Widget>[
          CupertinoButton(
            onPressed: () {
            },
            color: CupertinoColors.activeBlue,
            pressedOpacity: 0.8,
            borderRadius: BorderRadius.all(Radius.circular(55.0)),
            child: Text('按钮1'),
          ),
          CupertinoButton(
            onPressed: () {
            },
            child: Text('按钮2'),
          ),
          CupertinoButton(
            onPressed: null,
            padding: EdgeInsets.all(33),
            color: CupertinoColors.activeBlue,
            disabledColor: CupertinoColors.inactiveGray,
            child: Text('按钮3'),
          )
        ],
      ),
    );
  }
}