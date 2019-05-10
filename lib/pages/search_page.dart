import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  var _searchValue = '';

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
              child: Text('SnackBar - 要关联Scaffold key'),
              onPressed: () {
                _scaffoldkey.currentState.showSnackBar(
                  SnackBar(content: Text('SnackBar = 小吃店？'))
                );
              },
            ),
            RaisedButton(
              child: Text('showSearch - 必须重写SearchDelegate'),
              onPressed: () {
                showSearch(
                  context: context,
                  query: _searchValue,
                  delegate: MySearch(_searchValue)
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

  var _searchValue;

  MySearch(this._searchValue);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      BackButton(),
      CloseButton()
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    // 通过this调用SearchDelegate源码中的 query
    return ListTile(
      title: Text('未能找到'+ this.query +'相关内容')
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column(
      children: List.generate(4, (index) => ListTile(
          title: Text('Suggestions 00' + index.toString()),
          onTap: (){
            // 通过this调用SearchDelegate源码中的 query
            this.query = 'Suggestions 00' + index.toString();
          },
        )).toList()
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Icon(Icons.search);
  }
}