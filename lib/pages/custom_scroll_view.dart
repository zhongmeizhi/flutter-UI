import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatefulWidget {
  @override
  _CustomScrollViewPageState createState() => _CustomScrollViewPageState();
}

class _CustomScrollViewPageState extends State<CustomScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('CustomScrollView'),
      // ),
      body: Container(
        // height: 333,
        alignment: Alignment.center,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('CustomScrollView'),
              centerTitle: true,
              leading: BackButton(),
              actions: [
                Icon(Icons.ac_unit)
              ],
              // 图片高度如果没有设置，那么就不展示图片
              expandedHeight: 160.0, // 图片高度
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/img/ff.png', fit: BoxFit.cover),
              ),
              floating: true,
              snap: true, // 必须要 floating: true 才能使用，snap时在下拉手势松开后直接展示图片
              pinned: true, // 图片消失时 title 是否可见
              backgroundColor: Colors.transparent, // 透明背景
    // this.bottom,
    // this.backgroundColor,
            ),
            // 下面2个方案都可以实现
            // 一个有padding 一个没padding
            // SliverPadding(
            //   padding: const EdgeInsets.all(20.0),
            //   sliver: SliverList(
            //     delegate: SliverChildListDelegate(
            //       List.generate(30, (idx) => ListTile(
            //         title: Text('朋友圈-第${idx.toString()}个'),
            //       )).toList()
            //     ),
            //   ),
            // ),
            SliverFixedExtentList(
              itemExtent: 66.0, // 高度
              delegate: SliverChildListDelegate(
                List.generate(30, (idx) => ListTile(
                  title: Text('朋友圈-第${idx.toString()}个'),
                )).toList(),
                addRepaintBoundaries: false
              ),
            )
          ],
        ),
      ),
    );
  }
}