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
        title: Text('Dialog'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
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