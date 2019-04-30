import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        // color: Color.fromARGB(111, 111, 113, 222), // 背景色, color和decoration不能同时存在
        alignment: Alignment.topRight,
        margin: EdgeInsets.all(22),
        padding: EdgeInsets.all(11),
        height: 222.2,  
        width: double.infinity, // 默认宽高为 double.infinity
        decoration: BoxDecoration( // 修饰
          color: Color.fromARGB(161, 111, 113, 255),  // 背景色
          image: DecorationImage(image: NetworkImage('https://www.baidu.com/img/baidu_resultlogo@2.png')),  // 背景图
          border: Border.all(style: BorderStyle.solid, width: 6.6, color: Colors.amber),
          // borderRadius: BorderRadius.all(Radius.circular(33)), // borderRadius 和 shape: BoxShape.circle 不能同时使用
          boxShadow: [
            BoxShadow( // 阴影1
              color: Colors.cyan, 
              offset: Offset(-33.0, 155.0),  // 偏离度
              blurRadius: 3.3,   // 模糊度
              spreadRadius: -31.1  // 扩展:向内/向外
            ),
            BoxShadow( // 阴影2
              color: Colors.teal, 
              offset: Offset(33.0, 155.0),  // 偏离度
              blurRadius: 3.3,   // 模糊度
              spreadRadius: -31.1  // 扩展:向内/向外
            )
          ],
          gradient: RadialGradient(
            center: Alignment(0, -0.5),  // 渐变中心点
            radius: 0.3,  // 半径 百分比
            colors: [Colors.black, Colors.amber, Colors.blue, Colors.deepOrange],
            stops: [0, 0.1, 0.9, 1], // 分配颜色面积(start, end), 百分比
            tileMode: TileMode.mirror,  // 平铺模式
            focal: Alignment(0, -0.1), // 怪怪的.具体操作不详
            focalRadius: 0.5, // 怪怪的.具体操作不详
          ),
          backgroundBlendMode: BlendMode.difference,  // 背景混合的方式,怪怪的.
          shape: BoxShape.circle
        ),
        foregroundDecoration: BoxDecoration(), // 遮罩层
        constraints: BoxConstraints( // 约束
          minWidth: 0.0,
          maxWidth: double.infinity,
          minHeight: 0.0,
          maxHeight: double.infinity
        ),
        transform: Matrix4.skew((3.14/180) * 3, (3.14/180) * 15), // 转换
        // child: 
      ),
    );
  }
}