import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {

  bool _isSelectChip;

  @override
  void initState() {
    super.initState();
    _isSelectChip = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            FilterChip(
              label: Text('FilterChip 有勾勾的 Chip'),  // 文案
              labelStyle: TextStyle(color: Colors.blue),
              labelPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              avatar: Icon(Icons.ac_unit), // 头像
              avatarBorder: CircleBorder(
                side: BorderSide(color: Colors.blue, width: 2)
              ),
              tooltip: '提示',
              elevation: 1.6, // 阴影
              pressElevation: 6.6,
              selected: _isSelectChip,
              onSelected: (isSlected) {
                setState(() {
                  _isSelectChip = isSlected;
                });
              },
              disabledColor: Colors.grey,
              selectedColor: Colors.amber,
              shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
                borderRadius: BorderRadius.circular(55),
                gapPadding: 4.0,
              ),
              clipBehavior: Clip.antiAlias, // 不知何用
              backgroundColor: Colors.pink.withAlpha(55),
              padding: EdgeInsets.fromLTRB(12, 1, 12, 1),
              // 是否有外部边距
              materialTapTargetSize: MaterialTapTargetSize.padded
            ),
            // // 其他参数 和 FilterChip 类似
            ChoiceChip(
              label: Text('ChoiceChip 没有勾勾的 FilterChip'),
              selected: _isSelectChip,
              avatar: Icon(Icons.ac_unit),
              onSelected: (isSlected){
                setState(() {
                  _isSelectChip = isSlected;
                });
              }
            ),
            // // 其他参数 和 FilterChip 类似
            ActionChip(
              avatar: Icon(Icons.ac_unit),
              label: Text('ActionChip 活动中的Chip'),
              onPressed: (){},
            ),
            // // 其他参数 和 FilterChip 类似
            InputChip(
              avatar: Icon(Icons.ac_unit),
              label: Text('InputChip 可关闭、勾选、点击'),
              // isEnabled: true,
              selected: _isSelectChip,
              selectedColor: Colors.blue.withAlpha(55),
              onSelected: (isSlected) {
                setState(() {
                  _isSelectChip = isSlected;
                });
              },
              onDeleted: (){},
              // onSelected 和 onPressed 一定有一个为null
              // onPressed: (){}, 
            ),
            RawChip(
              avatar: Icon(Icons.ac_unit),
              label: Text('RawChip 全能，且可隐藏勾勾'),
              selected: _isSelectChip,
              selectedColor: Colors.blue.withAlpha(55),
              showCheckmark: false,
              onSelected: (isSlected) {
                setState(() {
                  _isSelectChip = isSlected;
                });
              },
              // tapEnabled: false,
              onDeleted: () {},
              // onSelected 和 onPressed 一定有一个为null
              // onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}