import 'package:flutter/material.dart';

class GestureDetectorWidgetsScreen extends StatelessWidget {
  const GestureDetectorWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GestureDetector Features')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Tap detected');
          },
          onDoubleTap: () {
            print('Double tap detected');
          },
          onLongPress: () {
            print('Long press detected');
          },
          onVerticalDragUpdate: (details) {
            print('Vertical drag detected: ${details.localPosition}');
          },
          onHorizontalDragUpdate: (details) {
            print('Horizontal drag detected: ${details.localPosition}');
          },
          // onPanUpdate: (details) {
          //   print('Pan update detected: ${details.localPosition}');
          // },
          // onScaleUpdate: (details) {
          //   print('Scale update detected: ${details.scale}');
          // },
          onTapDown: (details) {
            print('Tap down detected at position: ${details.localPosition}');
          },
          onTapUp: (details) {
            print('Tap up detected at position: ${details.localPosition}');
          },
          onTapCancel: () {
            print('Tap canceled');
          },
          onSecondaryTap: () {
            print('Secondary tap detected');
          },
          onSecondaryTapDown: (details) {
            print('Secondary tap down detected at position: ${details.localPosition}');
          },
          onSecondaryTapUp: (details) {
            print('Secondary tap up detected at position: ${details.localPosition}');
          },
          onSecondaryTapCancel: () {
            print('Secondary tap canceled');
          },
          // onDragStart: (details) {
          //   print('Drag start detected');
          // },
          // onDragEnd: (details) {
          //   print('Drag end detected');
          // },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Tap, Drag or Long Press Here',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
