import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Column(
        children: <Widget>[
          ButtonBar( // 右上角
            children: <Widget>[
              Text('ButtonBar'),
              BackButton(), // 回退按钮 maybePop
              CloseButton(), // 关闭按钮 maybePop
            ],
          ),
          Row(
            children: <Widget>[],
          ),
          FlatButton(
          // ShapeBorder shape,
          // MaterialTapTargetSize materialTapTargetSize,
            onHighlightChanged: (isPress) { // 按钮按下，放开得过程
              print(isPress);
            },
            textTheme: ButtonTextTheme.primary, // 主题，可呗color覆盖
            textColor: Colors.blue,
            // 不可用 即： onPressed = null
            disabledTextColor: Colors.black, // 不可用时得颜色 
            color: Colors.amber,  // 背景色
            disabledColor: Colors.grey, // 不可用时 背景色 
            highlightColor: Colors.red, // 按住后的颜色
            splashColor: Colors.white,  // 点击时的按钮光圈颜色
            colorBrightness: Brightness.dark, // 好像没什么用。。。？？？
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 55),
            // 形状
            shape:  RoundedRectangleBorder( // 圆角矩形边框
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(style: BorderStyle.solid, color: Colors.blue, width: 2)
            ),
            clipBehavior: Clip.hardEdge,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            onPressed: (){},
            child: Text('FlatButton'),
          ),
          Text('IconButton'),
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: (){},
            iconSize: 33.0,
            padding: EdgeInsets.all(3.0),
            alignment: Alignment.center,
            color: Colors.blue, // Icon颜色
            highlightColor: Colors.amber, //  高亮背景色
            splashColor: Colors.red,  // 按下光圈颜色
            tooltip: '按1秒后出现'
            // disabledColor 
          ),
          RawMaterialButton(  // 多了个海拔功能
            onPressed: (){},
            child: Text('RawMaterialButton'),
            textStyle: TextStyle(color: Colors.blue),
            // fillColor: Colors.amber,
            elevation: 5.0, // 翻译为海拔， 差不多就算按钮的阴影。
            highlightElevation: 8.0,
            disabledElevation: 0.0,
          ),
          RaisedButton( // RawMaterialButton 加强版本
            onPressed: (){},
            child: Text('RaisedButton'),
          ),
        ],
      ),
    );
  }

}