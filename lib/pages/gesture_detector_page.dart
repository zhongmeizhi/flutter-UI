import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: GestureDetector(
        child: Container(
          color: Colors.cyan.withAlpha(55),
          child: Center(
            child: Text('GestureDetector 各种手势'),
          ),
        ),
        onHorizontalDragStart: (DragStartDetails details) {
          print(details);
        }
    // this.onTapDown,
    // this.onTapUp,
    // this.onTap,
    // this.onTapCancel,
    // this.onDoubleTap,
    // this.onLongPress,
    // this.onLongPressStart,
    // this.onLongPressMoveUpdate,
    // this.onLongPressUp,
    // this.onLongPressEnd,
    // this.onVerticalDragDown,
    // this.onVerticalDragStart,
    // this.onVerticalDragUpdate,
    // this.onVerticalDragEnd,
    // this.onVerticalDragCancel,
    // this.onHorizontalDragDown,
    // this.onHorizontalDragStart,
    // this.onHorizontalDragUpdate,
    // this.onHorizontalDragEnd,
    // this.onHorizontalDragCancel,
    // this.onForcePressStart,
    // this.onForcePressPeak,
    // this.onForcePressUpdate,
    // this.onForcePressEnd,
    // this.onPanDown,
    // this.onPanStart,
    // this.onPanUpdate,
    // this.onPanEnd,
    // this.onPanCancel,
    // this.onScaleStart,
    // this.onScaleUpdate,
    // this.onScaleEnd,
    // this.behavior,
    // this.excludeFromSemantics = false,
    // this.dragStartBehavior = DragStartBehavior.start,
      ),
    );
  }
}