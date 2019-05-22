import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('绝对位置布局， Overflow.visible'),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  child: Text("Container"),
                  width: 222,
                  height: 222,
                  color: Colors.cyan,
                ),
                Positioned(
                  right: -38.0,
                  top: 111,
                  child: Text("Positioned 001"),
                ),
                Positioned(
                  bottom: 0.0,
                  left: -36.0,
                  child: Text("Positioned 002"),
                )  
              ],
            ),
            PopupMenuDivider(),
            Text('绝对位置布局， Overflow.clip'),
            Stack(
              overflow: Overflow.clip,
              children: <Widget>[
                Container(
                  child: Text("Container"),
                  width: 222,
                  height: 222,
                  color: Colors.cyan,
                ),
                Positioned(
                  right: -38.0,
                  top: 111,
                  child: Text("Positioned 001"),
                ),
                Positioned(
                  bottom: 0.0,
                  left: -36.0,
                  child: Text("Positioned 002"),
                )  
              ],
            ),
          ],
        ),
      ),
    );
  }
}