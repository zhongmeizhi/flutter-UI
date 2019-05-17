import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  bool _switchSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Switch(
              value: _switchSelected,
              onChanged:(value){
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            SwitchListTile(
              value: _switchSelected,
              title: Text('SwitchListTile'),
              onChanged:(value){
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
          ],
        ),
      )
    );
  }
}