import 'package:flutter/material.dart';

class FittedBoxWidgetsScreen extends StatelessWidget {
  const FittedBoxWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FittedBox Widget Features')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Example 1: BoxFit.contain
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                color: Colors.blue,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.contain',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 2: BoxFit.cover
            FittedBox(
              fit: BoxFit.cover,
              child: Container(
                color: Colors.green,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.cover',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 3: BoxFit.fill
            FittedBox(
              fit: BoxFit.fill,
              child: Container(
                color: Colors.red,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.fill',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 4: BoxFit.fitWidth
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                color: Colors.orange,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.fitWidth',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 5: BoxFit.fitHeight
            FittedBox(
              fit: BoxFit.fitHeight,
              child: Container(
                color: Colors.purple,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.fitHeight',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 6: BoxFit.none
            FittedBox(
              fit: BoxFit.none,
              child: Container(
                color: Colors.cyan,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.none',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 7: BoxFit.scaleDown
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                color: Colors.teal,
                width: 150,
                height: 100,
                child: const Text(
                  'BoxFit.scaleDown',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 8: Alignment customization
            FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.grey,
                width: 150,
                height: 100,
                child: const Text(
                  'Aligned Bottom Right',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
