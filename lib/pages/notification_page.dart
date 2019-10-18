import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      /*
       * 
       * 在Widget树中，每一个节点都可以分发通知，通知会沿着当前节点（context）向上传递
       * 所有父节点都可以通过NotificationListener来监听通知
       * 
       * Flutter中称这种通知由子向父的传递为“通知冒泡”（Notification Bubbling），这个和用户触摸事件冒泡是相似的
       * 
       * 但是：通知冒泡可以中止，但用户触摸事件不行。
       * 
       */
      body: NotificationListener(
        
        onNotification: (notification){
          print(notification.runtimeType);
          switch (notification.runtimeType){
            case ScrollStartNotification: print("开始滚动"); break;
            case ScrollUpdateNotification: print("正在滚动"); break;
            case ScrollEndNotification: print("滚动停止"); break;
            case OverscrollNotification: print("滚动到边界"); break;
          }
          return true;
        },
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(title: Text("$index"),);
            }
        ),
      )
    );
  }
}