import 'package:flutter/material.dart';

class InkwellWidgetsScreen extends StatelessWidget {
  const InkwellWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InkWell Features')),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Tapped');
          },
          onDoubleTap: () {
            print('Double tapped');
          },
          onLongPress: () {
            print('Long pressed');
          },
          onTapDown: (details) {
            print('Tap started at ${details.localPosition}');
          },
          onTapUp: (details) {
            print('Tap ended at ${details.localPosition}');
          },
          onTapCancel: () {
            print('Tap canceled');
          },
          splashColor: Colors.blue, // Custom splash color
          highlightColor: Colors.green, // Custom highlight color
          borderRadius: BorderRadius.circular(20), // Rounded corners for splash
          focusColor: Colors.orange, // Focus color
          hoverColor: Colors.red, // Hover color
          // enabled: true, // Enable or disable the InkWell
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Tap me!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
