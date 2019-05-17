import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Column(
        children: <Widget>[
          Text('Table的children数量 = 行数'),
          Text('TableRow的childrens数量 = 列数'),
          Table(
            border: TableBorder.all(width: 2), // Tabler专属Border
            children: List.generate(2, (index) => TableRow(
              children: List.generate(4, (idx2) => Container(
                padding: EdgeInsets.all(4),
                color: Colors.cyan,
                child: Text('TableRow' + idx2.toString(),
              )))
            )),
          ),
        ],
      )
    );
  }
}