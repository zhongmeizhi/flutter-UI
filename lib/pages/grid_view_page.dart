import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('GridView 宽高比2'),
            Container(
              height: 222,
              child: GridView(
                // SliverGridDelegateWithFixedCrossAxisCount extends SliverGridDelegate
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //横轴三个子widget
                    childAspectRatio: 2 //宽高比为1时，子widget
                ),
                children: List.generate(30, (idx) => Container(
                  color: Colors.cyan.withAlpha(55),
                  margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                  height: 23,
                  child: Text('第${idx.toString()}条'),
                )).toList()
          // Axis scrollDirection = Axis.vertical,
          // bool reverse = false,
          // ScrollController controller,
          // bool primary,
          // ScrollPhysics physics,
          // bool shrinkWrap = false,
          // EdgeInsetsGeometry padding,
          // bool addAutomaticKeepAlives = true,
          // bool addRepaintBoundaries = true,
          // bool addSemanticIndexes = true,
          // double cacheExtent,
          // int semanticChildCount,
              ),
            ),
            PopupMenuDivider(),
            Text('GridView.builder 按需加载'),
            Container(
              height: 222,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //横轴三个子widget
                    childAspectRatio: 2.0 //宽高比为1时，子widget
                ),
                itemBuilder: (BuildContext context, int idx){
                  return Container(
                    color: Colors.amber.withAlpha(55),
                    margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                    height: 23,
                    child: Text('第${idx.toString()}条'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}