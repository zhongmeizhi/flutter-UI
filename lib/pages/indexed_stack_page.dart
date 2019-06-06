import 'package:flutter/material.dart';

class IndexedStackPage extends StatefulWidget {
  @override
  _IndexedStackPageState createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {

  int _curPageIndex;

  @override
  void initState() {
    super.initState();
    _curPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('用户'),
            activeIcon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_media),
            title: Text('图片'),
            activeIcon: Icon(Icons.favorite)
          )
        ],
        currentIndex: _curPageIndex,
        onTap: (val) {
          setState(() {
            _curPageIndex = val; 
          });
        },
      ),
      body: IndexedStack(
        index: _curPageIndex,
        children: <Widget>[
          Center(
            child: Text('IndexedStack 继承自 Stack')
          ),
          Center(
            child: Text.rich(
              TextSpan(
                text: '显示第index个child，',
                children: [
                  TextSpan(text: '其他child都是不可见的', style: TextStyle(color: Colors.amber))
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}