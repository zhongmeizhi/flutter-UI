import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatefulWidget {
  @override
  _DecoratedBoxPageState createState() => _DecoratedBoxPageState();
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('DecoratedBox带有decoration属性的容器'),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
                borderRadius: BorderRadius.circular(3.0), //3像素圆角
                boxShadow: [ //阴影
                  BoxShadow(
                      color:Colors.black54,
                      offset: Offset(2.0,2.0),
                      blurRadius: 4.0
                  )
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                child: Text("Login", style: TextStyle(color: Colors.white),),
              )
            )
          ],
        ),
      ),
    );
  }
}