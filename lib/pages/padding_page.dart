import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  @override
  _PaddingPageState createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(33),
                child: Text('Padding容器 只有padding功能'),
              )
            )
          ],
        ),
      ),
    );
  }
}