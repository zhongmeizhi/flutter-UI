import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosDialog extends StatefulWidget {
  @override
  _IosDialogState createState() => _IosDialogState();
}

class _IosDialogState extends State<IosDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosDialog'),
      ),
      body: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text('标题'),
                    content: Text('内容'),
                    actions: <Widget>[
                      CupertinoButton(
                        child: Text('取消'),
                        onPressed: () {
                          Navigator.of(context).maybePop();
                        },
                      ),
                    ],
                  );
                }
              );
            },
            child: Text('IOS式Alert框'),
          ),
          CupertinoPopupSurface(
            isSurfacePainted: false,
            child: Text('CupertinoPopupSurface'),
          )
          // CupertinoButton(
          //   onPressed: () {
          //     showCupertinoDialog(
          //       context: context,
          //       builder: (context) {
          //         return CupertinoDialog( // 已经被弃用的
          //           child: Text('data'),
          //         );
          //       }
          //     );
          //   },
          //   child: Text('已经被弃用的 CupertinoDialog'),
          // ),
        ],
      ),
    );
  }
}