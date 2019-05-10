import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {

  var _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Checkbox'),
            Checkbox(
              tristate: true, // 勾，不勾，横杠
              value: _isCheck,
              onChanged: (val) {
                // 这玩意取消勾选的时候 返回的是 null 而不是 false
                setState(() {
                  _isCheck = val == null ? false : true;
                });
              },
              activeColor: Colors.blue.withAlpha(55),
              checkColor: Colors.blue,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
            ),
            Text('CheckboxListTile 是Checkbox的超集'),
            CheckboxListTile(
              value: _isCheck,
              onChanged: (val) {
                setState(() {
                  _isCheck = val;
                });
              },
              // leading：左边是checkbox, platform：右边是checkbox
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('title'),
              // subtitle: Text('subtitle'),
              // secondary: Text('secondary'),
              // isThreeLine: false, // 三行
              selected: true, // title和subTitle会变 红
              // dense: true, // title和subTitle会变 小
            ),
          ],
        ),
      )
    );
  }
}