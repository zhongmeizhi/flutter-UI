import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosPicker extends StatefulWidget {
  @override
  _IosPickerState createState() => _IosPickerState();
}

class _IosPickerState extends State<IosPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosPicker'),
      ),
      body: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomSheet(
                    onClosing: () {
                      print('close');
                    },
                    builder: (context) {
                      return CupertinoPicker( // 目前没有
                        itemExtent: 33,
                        children: <Widget>[
                          Text('喜欢冰阔落么'),
                          Text('喜欢冰阔落'),
                          Text('喜欢冰阔落么'),
                          Text('喜欢冰阔落'),
                        ],
                        onSelectedItemChanged: (val) {
                          print(val);
                        },
                      );
                    },
                  );
                }
              );
            },
            child: Text('点击弹出IOS的picker'),
          ),
          CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.dateAndTime,
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (val) {
                      print(val);
                    },
                  );
                }
              );
            },
            child: Text('点击弹出IOS的 Date picker -> 中文国际化缺少 获取时间的方法'),
          ),
          CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoTimerPicker(
                    onTimerDurationChanged: (val) {
                      print(val);
                    },
                  );
                }
              );
            },
            child: Text('点击弹出IOS的Time picker -> 有BUG的'),
          ),
        ],
      ),
    );
  }
}