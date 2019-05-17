import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  // 文本编辑控制
  TextEditingController _textEditingController = new TextEditingController();
  // 焦点控制
  FocusNode _focusNode1 = new FocusNode();
  FocusNode _focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {

    // 监听FocusNode
    _focusNode1.addListener((){
      // _focusNode1.hasFocus 是否聚焦
      print(_focusNode1.hasFocus);
    });
    
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            TextField(
              /*
               *  _textEditingController.text是当前文本
               *  initialValue + onChanged 也可以实现获取当前文本
               * 
               *  onChanged是专门用于监听文本变化
               *  而controller 除了能监听文本变化外，它还可以设置默认值、选择文本
               */
              controller: _textEditingController,
              // textInputAction: TextInputAction.go, // 输入框的确定按钮
              focusNode: _focusNode1,
              decoration: InputDecoration(
                // labelText: 'TextField', // 上标
                icon: Icon(Icons.ac_unit), // Field外部
                hintText: '占位文本', // hint 暗示
                helperText: '左下角', // helper 帮手
                hasFloatingPlaceholder: false, // labelText是否漂浮
                // errorText: '错误文本',
                errorBorder: InputBorder.none, // 当error时的border
                prefixIcon: Icon(Icons.phone_iphone), // Field前边
                // 后缀和前缀在focus时显示
                prefixText: '前缀',  // 前缀
                // prefix: Text('prefix'),
                suffixText: '后缀', // 后缀
                counterText: '右下角', // 计数器
                filled: true, // 背景色
                fillColor: Colors.cyan.withAlpha(35),
                focusedBorder: InputBorder.none, // 当focus时的border
                // semanticCounterText: '222'
              ),
              keyboardType: TextInputType.numberWithOptions(),
              cursorColor: Colors.red,
              obscureText: true, // 输入变成**
              onChanged: (val) {
                // xxx
              },
            ),
            TextField(
              focusNode: _focusNode2,
              decoration: InputDecoration(
                icon: Icon(Icons.access_alarm),
                labelText: '标签文本'
              ),
            ),
            PopupMenuDivider(),
            RaisedButton(
              child: Text('使用FocusNode 失去焦点'),
              onPressed: () {
                _focusNode1.unfocus();
                _focusNode2.unfocus();
              },
            ),
            RaisedButton(
              child: Text('使用FocusScope 切换焦点'),
              onPressed: () {
                if(focusScopeNode == null){
                  focusScopeNode = FocusScope.of(context);
                }
                
                if (_focusNode1.hasFocus) {
                  focusScopeNode.requestFocus(_focusNode2);
                } else {
                  focusScopeNode.requestFocus(_focusNode1);
                }
              },
            ),
            RaisedButton(
              child: Text('设置 TextEditingController.text = "你好世界"'),
              onPressed: () {
                // print(_textEditingController.text);
                _textEditingController.text = '你好世界';
              },
            ),
            RaisedButton(
              child: Text('提交'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (content) {
                    return Dialog(
                      child: Container(
                        padding: EdgeInsets.all(22),
                        child: Text('提交内容： ' + _textEditingController.text),
                      )
                    );
                  }
                );
              },
            )
          ],
        ),
      )
    );
  }
}