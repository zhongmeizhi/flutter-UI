import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('继承自Flex ')
              ),
              Container(
                child: Text('Colum占一列')
              ),
            ],
          ),
          Container(
            color: Colors.cyan,
            child: Column(
              children: List.generate(3, (index) => _textBox(index))
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            verticalDirection: VerticalDirection.up,
            children: List.generate(3, (index) => _textBox(index))
          ),
          PopupMenuDivider(),
          Column(
            children: List.generate(3, (index) => Expanded(
              flex: 1,
              child: _textBox(index),
            ))
          ),
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
    child: Text('Colum ' + index.toString()),
  );
}