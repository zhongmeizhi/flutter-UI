import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosSheetPage extends StatefulWidget {
  @override
  _IosSheetPageState createState() => _IosSheetPageState();
}

class _IosSheetPageState extends State<IosSheetPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosSheetPage'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('使用了'),
                Text('showCupertinoModalPopup'),
                Text('CupertinoActionSheet'),
                Text('CupertinoActivityIndicator'),
                Text('CupertinoActionSheetAction'),
                Text('CupertinoButton'),
              ],
            ),
          ),
          CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => _iosSheet(context)
              );
            },
            child: Text('点击弹出sheet'),
          ),
        ],
      ),
    );
  }
}

Widget _iosSheet(context) {
  return CupertinoActionSheet(
    title: Text('标题'),
    message: Container(
      child: Text('内容部分，巴拉巴拉bala.....'),
    ),
    actions: <Widget>[
      CupertinoActivityIndicator(
        radius: 36,
      ),
      CupertinoActionSheetAction(
          onPressed: () {
          },
          child: Text('CupertinoActionSheetAction'),
      ),
      CupertinoButton(
        onPressed: () {
        },
        child: Text('按钮1'),
      ),
      CupertinoButton(
        onPressed: () {
          Navigator.of(context).maybePop();
        },
        child: Text('关闭'),
      ),
    ],
  );
}