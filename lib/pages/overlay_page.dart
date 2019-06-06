import 'package:flutter/material.dart';

class OverlayPage extends StatefulWidget {
  @override
  _OverlayPageState createState() => _OverlayPageState();
}

class _OverlayPageState extends State<OverlayPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlay'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('自制弹出框 - Toast'),
              onPressed: () {
                // Overlay 绑定 context
                OverlayState _overlayState = Overlay.of(context);

                // 弹出框
                OverlayEntry _overlay = new OverlayEntry(
                  builder: (BuildContext context) => Center(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11, 6, 11, 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withAlpha(166),
                          boxShadow: <BoxShadow>[
                            BoxShadow(color: Colors.grey)
                          ]
                        ),
                        child: Text('data', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                );

                // 放置在屏幕上
                _overlayState.insert(_overlay);

                // 移除Overly
                Future.delayed(Duration(seconds: 2)).then((val) {
                  _overlay.remove();
                });
              },
            ),
            RaisedButton(
              child: Text('自制弹出框 - Loading'),
              onPressed: () {
                // Overlay 绑定 context
                OverlayState _overlayState = Overlay.of(context);

                // 弹出框
                OverlayEntry _overlay = new OverlayEntry(
                  builder: (BuildContext context) => Center(
                    child: CircularProgressIndicator(
                      // value: 0.7, // 圈的大小
                      // backgroundColor: Colors.transparent,
                      strokeWidth: 3.0, // 圈的粗细
                      semanticsLabel: 'semanticsLabel',
                      semanticsValue: '1',
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  )
                );

                // 放置在屏幕上
                _overlayState.insert(_overlay);

                // 移除Overly
                Future.delayed(Duration(seconds: 2)).then((val) {
                  _overlay.remove();
                });
              },
            )
          ],
        ),
      )
    );
  }
}