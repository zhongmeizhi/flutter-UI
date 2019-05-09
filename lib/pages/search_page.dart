import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('showMenu - 贴住屏幕显示的下拉框'),
              onPressed: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(0.0, 1.0, 1.0, 0.0), // 一定会贴近屏幕显示
                  initialValue: '1',  // 初始值，对应PopupMenuItem的value
                  elevation: 6.0,
                  semanticLabel: 'semanticLabel',
                  items: [
                    PopupMenuItem(
                      value: '1',
                      child: Text('Text 1'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('Text 2'),
                    )
                  ]
                );
              },
            ),
            RaisedButton(
              child: Text('showSearch - 必须重写SearchDelegate'),
              onPressed: () {
                showSearch(
                  context: context,
                  query: '默认值',
                  delegate: MySearch()
                );
              },
            ),
          ],
        ),
      )
    );
  }
}

class MySearch extends SearchDelegate {

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Text('1')
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Suggestions'),
        Text('Suggestions'),
        Text('Suggestions'),
        Text('Suggestions'),
      ],
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Icon(Icons.search);
  }
}