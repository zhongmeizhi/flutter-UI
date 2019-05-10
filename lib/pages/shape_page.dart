import 'package:flutter/material.dart';

class ShapePage extends StatefulWidget {
  @override
  _ShapePageState createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaper'),
      ),
      // BoxBorder -> ShapeBorder
      // InputBorder -> ShapeBorder
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(22),
              child: Text('最终继承自ShapeBorder （抽象类）'),
            ),
            FlatButton(
               // 似乎没法设定 radius
              shape: Border.all(
                width: 3,
                color: Colors.amber,
                style: BorderStyle.solid
              ),
              onPressed: (){},
              child: Text('Border 边界'),
            ),
            FlatButton(
              shape: BorderDirectional(
                top: BorderSide(width: 2,color: Colors.blue),
                end: BorderSide(width: 2,color: Colors.pink),
                start: BorderSide(width: 2,color: Colors.amber),
                bottom: BorderSide(width: 2,color: Colors.cyan),
              ),
              onPressed: (){},
              child: Text('BorderDirectional 定向边界'),
            ),
            FlatButton(
              shape: CircleBorder(
                side: BorderSide(width: 2,color: Colors.blue, style: BorderStyle.solid)
              ),
              onPressed: (){},
              child: Text('CircleBorder 圆形边界'),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.deepOrange, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(11))
              ),
              onPressed: (){},
              child: Text('RoundedRectangleBorder 长方形圆角边界'),
            ),
            FlatButton(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.pink,
                  width: 2,
                  style: BorderStyle.solid
                )
              ),
              onPressed: (){},
              child: Text('StadiumBorder 体育场？ 边界'),
            ),
            FlatButton(
              // 外边边界
              shape: OutlineInputBorder(
                // 通过 borderSide 控制颜色、宽度、样式
                borderSide: BorderSide(color: Colors.cyan),
                borderRadius: BorderRadius.circular(11),
                gapPadding: 4.0, // 似乎没什么用
              ),
              child: Text('OutlineInputBorder 轮廓边界'),
              onPressed: (){},
            ),
            FlatButton(
              shape: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(55))
              ),
              onPressed: (){},
              child: Text('UnderlineInputBorder 下划线边界'),
            )
          ],
        ),
      ),
    );
  }
}