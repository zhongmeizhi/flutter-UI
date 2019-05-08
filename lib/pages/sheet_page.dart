import 'package:flutter/material.dart';

class SheetPage extends StatefulWidget {
  @override
  _SheetPageState createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('showModalBottomSheet - 好用的下出Sheet'),
              onPressed: () {
                // _scaffoldkey.currentState.
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BottomSheet(
                      onClosing: (){},
                      builder: (context) {
                        return Container(
                          height: 222,
                          child: Text('这是使用showModalBottomSheet出现的，BottomSheet'),
                        );
                      },
                    );
                  }
                );
              }
            ),
            RaisedButton(
              child: Text('showBottomSheet - 自由度高的Sheet'),
              onPressed: () {
                _scaffoldkey.currentState.showBottomSheet(
                  (context) {
                    return BottomSheet(
                      onClosing: (){},
                      builder: (context) {
                        return Container(
                          height: 222,
                          color: Colors.amber,
                          child: Column(
                            children: <Widget>[
                              ButtonBar(
                                children: <Widget>[
                                  CloseButton()
                                ],
                              ),
                              Text('这是BottomSheet'),
                              Text('他没有遮罩层'),
                              Text('也不会自动下去'),
                              Text('使用时还需要 _scaffoldkey.currentState'),
                            ],
                          ),
                        );
                      },
                    );
                  }
                );
              }
            ),
          ],
        ),
      )
    );
  }
}