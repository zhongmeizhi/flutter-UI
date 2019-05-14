import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  var _isSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Radio 通过 groupValue 关联'),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              groupValue: _isSelect,
              activeColor: Colors.blue,
              value: '1',
              onChanged: (val){
                setState(() {
                  _isSelect = val;
                });
              },
            ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              groupValue: _isSelect,
              activeColor: Colors.blue,
              value: '2',
              onChanged: (val){
                setState(() {
                  _isSelect = val;
                });
              },
            ),
            RadioListTile(
              title: Text('按钮3'),
              groupValue: _isSelect,
              value: '3',
              onChanged: (val){
                setState(() {
                  _isSelect = val;
                });
              },
            )
          ],
        ),
      )
    );
  }
}