import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  @override
  _RefreshIndicatorPageState createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {

  ScrollController _scrollController = ScrollController();
  List<Map> _items = List.generate(12, (idx) {
    return {
      'name': '：第${(idx + 1).toString()}个'
    };
  });

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // 判断是否到了最底部
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        setState(() {
          // 加载数据
          _items.addAll(List.generate(12, (idx) {
            return {
              'name': '下拉加载，第${(idx + 1).toString()}个'
            };
          }).toList());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('上拉刷新,下拉加载'),
      ),
      body: RefreshIndicator( // 适用于child可以滚动的情况
        onRefresh: () {
          return Future.delayed(Duration(milliseconds: 1)).then((val) {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: Card(
                  margin: EdgeInsets.all(11),
                  child: Text('刷新完成'),
                ),
              )
            );
          });
        },
        child: ListView.builder( // 下拉加载适用于 xxxView.builder
          controller: _scrollController,
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int idx) {
            return ListTile(
              title: Text(_items[idx]['name']),
            );
          },
        ),
      )
    );
  }
}