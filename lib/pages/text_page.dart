import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Text 文本',
              style: TextStyle(fontSize: 22),
            ),
            Text.rich(
              TextSpan(
                children: [
                TextSpan(
                  text: "Text.rich 组合"
                ),
                TextSpan(
                  text: "TextSpan 单独样式文本",
                  style: TextStyle(
                    color: Colors.blue
                  ),  
                  //  recognizer: _tapRecognizer
                ),
              ]
            )),
            PopupMenuDivider(),
            DefaultTextStyle(
              //1.设置文本默认样式  
              style: TextStyle(
                color:Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("使用DefaultTextStyle"),
                  Text("继承：红色20Size的样式"),
                  Text("inherit 并重写样式",
                    style: TextStyle(
                      inherit: true, //2.不继承默认样式
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuDivider(),
          ],
        ),
      )
    );
  }
}