import 'package:flutter/material.dart';

class ListTitlePage extends StatefulWidget {
  @override
  _ListTitlePageState createState() => _ListTitlePageState();
}

class _ListTitlePageState extends State<ListTitlePage> {

  bool _isChecked = false;
  bool _switchSelected = false;
  bool _isSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTitle'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('ListTile'),
              leading: Text('data'),
              subtitle: Text('data'),
              onTap: () {
              }
            ),
            PopupMenuDivider(),
            CheckboxListTile(
              value: _isChecked,
              title: Text('CheckboxListTile 默认controlAffinity'),
              onChanged: (val) {
                setState(() {
                  _isChecked = val;
                });
              }
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: _isChecked,
              title: Text('CheckboxListTile 控制controlAffinity'),
              onChanged: (val) {
                setState(() {
                  _isChecked = val;
                });
              }
            ),
            PopupMenuDivider(),
            RadioListTile(
              title: Text('RadioListTile'),
              groupValue: _isSelect,
              value: '3',
              onChanged: (val){
                setState(() {
                  _isSelect = val;
                });
              },
            ),
            PopupMenuDivider(),
            SwitchListTile(
              value: _switchSelected,
              title: Text('SwitchListTile'),
              onChanged:(value){
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            PopupMenuDivider(),
            AboutListTile(
              child: Text('任性的 AboutListTile'),
            )
          ],
        ),
      ),
    );
  }
}