import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosSwitchPage extends StatefulWidget {
  @override
  _IosSwitchPageState createState() => _IosSwitchPageState();
}

class _IosSwitchPageState extends State<IosSwitchPage> {

  bool _val = true;
  bool _val2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosSwitchPage'),
      ),
      body: ListView(
        children: <Widget>[
          CupertinoSwitch(
            value: _val,
            onChanged: (val) {
              _val = val;
              setState(() {});
            },
          ),
          CupertinoSwitch(
            value: _val2,
            activeColor: CupertinoColors.activeBlue,
            onChanged: (val) {
              _val2 = val;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}