import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosSliderPage extends StatefulWidget {
  @override
  _IosSliderPageState createState() => _IosSliderPageState();
}

class _IosSliderPageState extends State<IosSliderPage> {

  double _val = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosSliderPage'),
      ),
      body: ListView(
        padding: EdgeInsets.all(22),
        children: <Widget>[
          CupertinoSlider(
            value: _val,
            onChanged: (val) {
              _val = val;
              setState(() {});
            },
          ),
          Text('当前Slider的value = $_val'),
        ],
      ),
    );
  }
}