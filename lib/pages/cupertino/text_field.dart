import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosTextFieldpage extends StatefulWidget {
  @override
  _IosTextFieldpageState createState() => _IosTextFieldpageState();
}

class _IosTextFieldpageState extends State<IosTextFieldpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosTextFieldpage'),
      ),
      body: ListView(
        padding: EdgeInsets.all(22),
        children: <Widget>[
          CupertinoTextField(
            placeholder: '请输入xxx',
            placeholderStyle: TextStyle(color: Colors.blue),
            clearButtonMode: OverlayVisibilityMode.always,
          )
        ],
      ),
    );
  }
}