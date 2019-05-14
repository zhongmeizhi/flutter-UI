import 'package:flutter/material.dart';

class ExpansionPage extends StatefulWidget {
  @override
  _ExpansionPageState createState() => _ExpansionPageState();
}

class _ExpansionPageState extends State<ExpansionPage> {

  var _isExpandList = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (index, isExpansion) {
                setState(() {
                  _isExpandList[index] = !_isExpandList[index];
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (context, val) {
                    return Text('headerBuilder 001');
                  },
                  isExpanded: _isExpandList[0],
                  body: Text('23333 我要出来了 001')
                ),
                ExpansionPanel(
                  headerBuilder: (context, val) {
                    return Text('headerBuilder 002');
                  },
                  isExpanded: _isExpandList[1],
                  body: Text('23333 我要出来了 002')
                ),
              ]
            )
          ],
        ),
      )
    );
  }
}