import 'package:flutter/material.dart';
import 'package:flutter_ui/unit/hero_image.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('点击下面图片触发Hero效果'),
            Container(
              // Hero 不能包裹 Button
              child: RawMaterialButton(
                child: Hero(
                  tag: 'tag1',
                  child: Image.asset('assets/img/ff.png'),
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HeroImage()));
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}