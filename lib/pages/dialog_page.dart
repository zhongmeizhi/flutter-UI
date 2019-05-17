import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

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

            // show 都是 Feature。可以then

            RaisedButton(
              child: Text('showDialog - 容易写的 dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,  // 是否可以点击底部遮罩层取消dialog
                  // child: Text('data')
                  builder: (context) {
                    return Dialog( // Dialog
                      child: Container(
                        padding: EdgeInsets.all(11),
                        child: Text('这个是 Dialog '),
                      ),
                    );
                  }
                );
              },
            ),
            RaisedButton(
              child: Text('showGeneralDialog - 很方便做动画的 dialog'),
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                    return Center(
                      child: Material( // Material 是全屏的额外层
                        child: Container(
                          padding: EdgeInsets.all(16),
                          // withOpacity 颜色透明度, double
                          color: Colors.black.withOpacity(animation.value), // animation.value 是double 0-1
                          child: Text("showGeneralDialog可以很方便的与Animation完成动画效果"),
                        ),
                      ),
                    );
                  },
                  // !barrierDismissible || barrierLabel != null': is not true.
                  barrierDismissible: true,  // 是否可以点击底部遮罩层取消dialog
                  barrierLabel: 'barrierLabel', // 当barrierDismissible为true时。一定要有barrierLabel
                  barrierColor: Colors.cyan,  // 底部遮罩颜色, 不设置则是透明背景
                  transitionDuration: Duration(milliseconds: 666),
                  transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                    // 这里可以对 pageBuilder 的child做一些操作
                    return FractionalTranslation(
                      translation: Offset(0, animation.value - 1), // 比如从上而下的child
                      child: child,
                    );
                  } 
                );
              },
            ),
            RaisedButton(
              child: Text('showAboutDialog - 关于App ？？？'),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  // applicationName: 'app名称',
                  // applicationVersion: 'app版本',
                  // applicationIcon: Icon(Icons.apps),
                  // applicationLegalese: 'app法规？',
                  // children: <Widget>[
                  //   Text('data')
                  // ]
                );
              },
            ),
            // RaisedButton(
            //   child: Text('showLicensePage - 执照？？？'),
            //   onPressed: () {
            //     showLicensePage(
            //       context: context,
            //       // applicationName: 'app名称',
            //       // applicationVersion: 'app版本',
            //       // applicationIcon: Icon(Icons.ac_unit),
            //       // applicationLegalese: 'app法规？',
            //     );
            //   },
            // ),
            RaisedButton(
              child: Text('AlertDialog 类似 confirm'),
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,  // 是否可以点击底部遮罩层取消dialog
                  // child: Text('data')
                  builder: (context) {
                    return Container(
                      child: AlertDialog(
                        title: Text('提示'),
                        titlePadding: EdgeInsets.fromLTRB(24.0, 24.0, 0.0, 0.0),
                        titleTextStyle: TextStyle(color: Colors.amber, fontSize: 22),
                        content: Text('这是内容'),
                        contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
                        contentTextStyle: TextStyle(fontSize: 14),
                        actions: <Widget>[
                          RaisedButton(
                            color: Colors.white,
                            child: Text('取消'),
                            onPressed: (){
                              Navigator.maybePop(context);
                            },
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text('确认'),
                            onPressed: (){
                              Navigator.maybePop(context);
                            },
                          ),
                        ],
                        semanticLabel: 'semanticLabel',
                        backgroundColor: Colors.cyan,
                        shape: Border.all(color: Colors.deepOrange),
                        elevation: 22
                      ),
                    );
                  }
                );
              },
            ),
            RaisedButton(
              child: Text('SimpleDialog 具有 children'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('title'),
                      titlePadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      contentPadding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
                      children: <Widget>[
                        SimpleDialogOption(
                          child: Text('SimpleDialogOption 具有 onPressed'),
                          onPressed: () {
                            print('object');
                          },
                        ),
                        SimpleDialogOption(
                          child: Text('SimpleDialogOption 具有 onPressed'),
                          onPressed: () {
                            print('object');
                          }
                        ),
                      ],
                      semanticLabel: 'semanticLabel',
                      backgroundColor: Colors.cyan,
                      shape: Border.all(color: Colors.deepOrange),
                      elevation: 22
                    );
                  }
                );
              },
            )
          ],
        ),
      )
    );
  }
}
