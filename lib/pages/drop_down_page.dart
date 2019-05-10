import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  @override
  _DropDownPageState createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {

  var _value = '001';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('DropdownButton 下拉框'),
            DropdownButton( // 下拉框
              items: List.generate(4, (val) => DropdownMenuItem(
                  value: '00' + val.toString(),
                  child: Text('下拉框00' + val.toString()),
                )).toList(),
              onChanged: (val){
                this.setState((){
                  _value = val;
                });
              },
              value: _value,
              style: TextStyle(color: Colors.blue,),
              hint: Text('DropdownButton'),
              disabledHint: Text('disabledHint'),
              elevation: 9,
              iconSize: 33,
              isDense: false,
              isExpanded: false
            ),
            Text('HideUnderline的 下拉框'),
            DropdownButtonHideUnderline(
              child: DropdownButton( // 下拉框
                items: List.generate(4, (val) => DropdownMenuItem(
                    value: '00' + val.toString(),
                    child: Text('下拉框00' + val.toString()),
                  )).toList(),
                onChanged: (val){
                  this.setState((){
                    _value = val;
                  });
                },
                value: _value,
                style: TextStyle(color: Colors.blue,),
                hint: Text('DropdownButton'),
                disabledHint: Text('disabledHint'),
                elevation: 9,
                iconSize: 33,
                isDense: false,
                isExpanded: false
              )
            ),
            Text('DropdownButtonFormField'),
            DropdownButtonFormField(
              value: _value,
              items: List.generate(4, (val) => DropdownMenuItem(
                value: '00' + val.toString(),
                child: Text('下拉框00' + val.toString()),
              )).toList(),
              decoration: InputDecoration(),
              // FormFieldSetter<T> onSaved,
              // FormFieldValidator<T> validator,
              onChanged: (val) {
                this.setState((){
                  _value = val;
                });
              },
            )
          ],
        ),
      )
    );
  }
}