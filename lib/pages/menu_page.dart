import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
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
                  position: RelativeRect.fromLTRB(1.0, 0.0, 0.0, 0.0), // 一定会贴近屏幕显示
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
            Text('PopupMenuButton 一般放在右上角'),
            PopupMenuButton(
              child: Icon(Icons.ac_unit),
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(
                    value: '1',
                    child: Text('data'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('data'),
                  )
                ];
              }
            ),
            PopupMenuDivider(), // 下横线
          ],
        ),
      )
    );
  }
}