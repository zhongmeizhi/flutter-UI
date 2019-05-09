import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  DateTime _curYear;
  DateTime _curMonth;
  DateTime _curDay;
  
  @override
  void initState() {
    super.initState();
    _curYear = DateTime(2019);
    _curMonth = DateTime.now();
    _curDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Picker'),
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
            RaisedButton(
              child: Text('使用showModalBottomSheet 展示 YearPicker'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 222,
                      width: 333,
                      child: YearPicker(
                        firstDate: DateTime(2008),
                        lastDate: DateTime(2033),
                        selectedDate: _curYear,
                        onChanged: (time) {
                          _curYear = time;
                          // 在 showModalBottomSheet 内部 setState是无效的
                          // setState(() {
                          // });
                          Navigator.maybePop(context); // 退出 showModalBottomSheet
                        },
                      ),
                    );
                  }
                );
              },
            ),
            RaisedButton(
              child: Text('使用showDialog 展示 MonthPicker'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: MonthPicker(
                        firstDate: DateTime.now().subtract(Duration(days: 55)),
                        lastDate: DateTime.now().add(Duration(days: 55)),
                        selectedDate: _curMonth,
                        onChanged: (time) {
                          _curMonth = time;
                          // 在 showDialog 内部 setState是无效的
                          // setState(() {
                          // });
                          Navigator.maybePop(context); // 退出 showDialog
                        },
                      ),
                    );
                  }
                );
              },
            ),
            RaisedButton(
              child: Text('使用showModalBottomSheet 展示 DayPicker'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 222,
                      width: 333,
                      child: DayPicker(
                        firstDate: DateTime.now().subtract(Duration(days: 5)),
                        lastDate: DateTime.now().add(Duration(days: 5)),
                        currentDate: DateTime.now(),
                        selectedDate: _curDay,
                        displayedMonth: DateTime(2019, 5),
                        onChanged: (time) {
                          _curDay = time;
                          Navigator.maybePop(context); // 退出 showDialog
                        },
                      )
                    );
                  }
                );
              },
            ),
          ],
        ),
      )
    );
  }
}