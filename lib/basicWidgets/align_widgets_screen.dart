import 'package:flutter/material.dart';

class AlignWidgetsScreen extends StatelessWidget {
  const AlignWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Widget Features')),
      body: Stack(
        children: [
          // Example 1: Top Left Alignment
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(8),
              child: const Text('Top Left', style: TextStyle(color: Colors.white)),
            ),
          ),

          // Example 2: Center Alignment
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(8),
              child: const Text('Center', style: TextStyle(color: Colors.white)),
            ),
          ),

          // Example 3: Bottom Right Alignment
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              child: const Text('Bottom Right', style: TextStyle(color: Colors.white)),
            ),
          ),

          // Example 4: Fractional Alignment
          Align(
            alignment: const Alignment(0.8, -0.8), // Positioned near top-right
            child: Container(
              color: Colors.purple,
              padding: const EdgeInsets.all(8),
              child: const Text('Fractional', style: TextStyle(color: Colors.white)),
            ),
          ),

          // Example 5: With Width and Height Factor
          Align(
            alignment: Alignment.centerLeft,
            widthFactor: 2, // Doubles the width
            heightFactor: 1.5, // Increases the height by 50%
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(8),
              child: const Text('Width/Height Factor', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
