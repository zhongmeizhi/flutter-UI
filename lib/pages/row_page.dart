import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Column(
        children: <Widget>[
          Text('Row继承自Flex'),
          Text('Row占一行，超宽会警告'),
          Container(
            color: Colors.cyan,
            child: Row(
              children: List.generate(3, (index) => _textBox(index))
            ),
          ),
          Text('Row 属性 MainAxisAlignment.spaceBetween'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) => _textBox(index))
          ),
          PopupMenuDivider(),
          Text('Row 属性 MainAxisAlignment.end'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(3, (index) => _textBox(index))
          ),
          PopupMenuDivider(),
          Text('Row + Expand 实现flex自适应&填充'),
          Row(
            children: List.generate(3, (index) => Expanded(
              flex: index+3,
              child:_textBox(index),
            ))
          ),
          PopupMenuDivider(),
        ],
      ),
    );
  }
}

Widget _textBox (index) {
  return Container(
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
      border: Border.all(width: 1)
    ),
    child: Text('Row ' + index.toString()),
  );
}