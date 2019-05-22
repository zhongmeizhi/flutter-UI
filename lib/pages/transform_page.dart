import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransForm'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Transform可以在其子Widget绘制时对其应用一个矩阵变换'),
            Container(
              margin: EdgeInsets.only(top: 33),
              color: Colors.cyan,
              child: new Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: new Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.amber,
                  child: const Text('Transform'),
                ),
              ),
            ),
            PopupMenuDivider(),
            Text('可以直接使用抽象方法作为Widget'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 65),
              color: Colors.cyan,
              child: Transform.rotate(
                angle: 45,
                child: Transform.translate(offset: Offset(20.0, 1.0),
                  child: Text("rotate +  translate"),
                ),
              ),
            ),
            PopupMenuDivider(),
            Text('RotatedBox和Transform.rotate功能相似'),
            Text('RotatedBox的变换是在layout阶段'),
            Text('会影响在子widget的位置和大小'),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.amber),
              child: RotatedBox(
                quarterTurns: 2, //旋转90度(1/4圈)
                child: Text("BoxDecoration"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}