import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroImage'),
      ),
      body: Center(
        child: Hero(
          tag: 'tag1',
          child: RawMaterialButton(
            child: Image.asset('assets/img/ff.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // placeholderBuilder: (context, widget) {
          //   return CircularProgressIndicator();
          // },
        ),
      ),
    );
  }
}