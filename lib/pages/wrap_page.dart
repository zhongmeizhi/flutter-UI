import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Column(
        children: <Widget>[
          Text('Warp会自动换行'), 
          PopupMenuDivider(),
          // Warp 译为 弯曲
          Container(
            color: Colors.amber.withAlpha(55),
            child: Wrap(
              alignment: WrapAlignment.center, // 主轴
              textDirection: TextDirection.rtl,
              crossAxisAlignment: WrapCrossAlignment.center, // 交叉轴
              runAlignment: WrapAlignment.end,
              children: List.generate(9, (index) => _textBox(index))
            ),
          ),
          PopupMenuDivider(),
          Text('direction: Axis.vertical溢出会报错'),
          Container(
            color: Colors.cyan.withAlpha(55),
            child: Wrap(
              direction: Axis.vertical,
              spacing: 13,
              alignment: WrapAlignment.end, // 主轴
              crossAxisAlignment: WrapCrossAlignment.end, // 交叉轴
              runAlignment: WrapAlignment.end,
              children: List.generate(4, (index) => _textBox(index))
            )
          ),
        ],
      ),
    );
  }
}

Widget _textBox (index) {
  if (index == 2) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(3),
      width: 45,
      decoration: BoxDecoration(
        border: Border.all(width: 1)
      ),
      child: Text('多行文本显示'),
    );
  }
  return Container(
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
      border: Border.all(width: 1)
    ),
    child: Text('Wrap ' + index.toString()),
  );
}