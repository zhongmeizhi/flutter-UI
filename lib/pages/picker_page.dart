import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('showDatePicker - 日期选择器'),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate: new DateTime.now().subtract(new Duration(days: 55)), // 减 30 天
                  lastDate: new DateTime.now().add(new Duration(days: 55)),
                  initialDatePickerMode: DatePickerMode.day,
                  // selectableDayPredicate: (day) { // 可选日期
                  //   return true;
                  // },
                  // locale: Locale('zh', 'CN'),
                // textDirection: TextDirection.ltr,
                // builder: (BuildContext context, Widget child) { // 自己构建日期选择器
                //   return Text('data');
                // }
                );
              },
            ),
            RaisedButton(
              child: Text('showTimePicker - 时钟选择器'),
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  // builder: 动画
                );
              },
            ),
          ],
        ),
      )
    );
  }
}