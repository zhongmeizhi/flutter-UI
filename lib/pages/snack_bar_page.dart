import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('SnackBar - 要关联Scaffold key'),
              onPressed: () {
                _scaffoldkey.currentState.showSnackBar(
                  SnackBar(content: Text('showSnackBar = 显示小吃店？'))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}