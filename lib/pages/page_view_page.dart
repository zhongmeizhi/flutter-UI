import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {

  PageController _pageController = new PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: Container(
        width: 333,
        height: 333,
        child: Stack(
          children: <Widget>[
            PageView.builder(
              // scrollDirection: Axis.vertical, // 默认方向垂直
              controller: _pageController,
              itemCount: 3,  // 没有itemCount那么itemCount是无穷大的
              itemBuilder: (BuildContext context, int idx) {
                return Container(
                  margin: EdgeInsets.all(11),
                  color: Colors.amber.withAlpha(33),
                  child: Text('PageView builder ${idx.toString()}'),
                );
              },
              onPageChanged: (idx) {
                setState(() {
                });
              }
            ),
            Positioned(
              bottom: 0,
              width: 414,
              child: Container(
                alignment: Alignment.center,
                child: Text(_pageController.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}