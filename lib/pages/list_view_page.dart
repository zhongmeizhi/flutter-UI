import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('正向。顺序'),
            Container(
              height: 166,
              color: Colors.cyan.withAlpha(25),
              child: ListView(
                reverse: false, // 倒序
                primary: false,
                padding: EdgeInsets.all(22),
                children: List.generate(30, (idx) => Container(
                  color: Colors.amber.withAlpha(155),
                  margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  height: 33,
                  child: Text('第${idx.toString()}条'),
                )).toList()
              ),
            ),
            PopupMenuDivider(),
            Text('横向。倒序'),
            Container(
              height: 99,
              color: Colors.amber.withAlpha(35),
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true, // 倒序
                padding: EdgeInsets.all(11),
                children: List.generate(30, (idx) => Container(
                  color: Colors.cyan.withAlpha(55),
                  margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                  height: 23,
                  width: 33,
                  child: Text('第${idx.toString()}条'),
                )).toList()
              ),
            ),
            PopupMenuDivider(),
            Text('ListView.builder按需加载'),
            Container(
              height: 99,
              color: Colors.cyan.withAlpha(55),
              child: ListView.builder(
                padding: EdgeInsets.all(12),
                scrollDirection: Axis.horizontal,
                itemCount: 100, // 总数目
                itemExtent: 50.0, //强制高度为50.0
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.amber.withAlpha(75),
                    margin: EdgeInsets.all(6),
                    child: Text('第${index.toString()}条'),
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
  }
}