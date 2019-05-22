import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  var _searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
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
    return RaisedButton(
      child: Icon(Icons.search),
      color: Colors.white,
      onPressed: (){
        this.showResults(context);
      },
    );
  }
}