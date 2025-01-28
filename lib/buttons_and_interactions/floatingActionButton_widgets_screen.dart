import 'package:flutter/material.dart';

class FloatingActionButtonWidgetsScreen extends StatelessWidget {
  const FloatingActionButtonWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton Features')),
      body: Center(
        child: const Text('Tap the Floating Action Button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button Pressed');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue, // Custom background color
        foregroundColor: Colors.white, // Custom icon color
        elevation: 8.0, // Custom elevation (shadow depth)
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // Custom shape
        mini: false, // Default size, set to true for a smaller FAB
        tooltip: 'Add Item', // Tooltip for long press
        heroTag: 'addItem', // Hero tag for animations
      ),
    );
  }
}
