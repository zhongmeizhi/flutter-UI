import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MethodChannelPage extends StatefulWidget {
  @override
  _MethodChannelPageState createState() => _MethodChannelPageState();
}

class _MethodChannelPageState extends State<MethodChannelPage> {

  // MethodChannel _platformMethodChannel = const MethodChannel('flutter_ui');
  // String _nativeMessage = '';
  
  // Future<Null> doNativeSuff() async {
  //   String _message; // 1
  //   try {
  //     final String result = await _platformMethodChannel.invokeMethod('changeLife');// 2
  //     _message = result;
  //     print(result);
  //   } on PlatformException catch (e) {
  //     _message = "Sadly I can not change your life: ${e.message}.";
  //   }
  //   setState(() {
  //       _nativeMessage = _message; // 3
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('MethodChannel'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            // Text(_nativeMessage ?? ' xxx'),
            // RaisedButton(
            //   child: Text('获取平台信息'),
            //   onPressed: doNativeSuff,
            // ),
            Text('通过导入services使用 MethodChannel'),
            Text('MethodChannel 用于和 Native通信'),
          ],
        ),
      )
    );
  }
}