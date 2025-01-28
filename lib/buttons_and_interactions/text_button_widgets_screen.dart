import 'package:flutter/material.dart';

class TextButtonWidgetsScreen extends StatelessWidget {
  const TextButtonWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextButton Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Example 1: Basic TextButton
            TextButton(
              onPressed: () {
                print('Basic TextButton Pressed');
              },
              child: const Text('Basic TextButton'),
            ),
            const SizedBox(height: 20),

            // Example 2: TextButton with custom text color
            TextButton(
              onPressed: () {
                print('Custom Text Color');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, // Text color
              ),
              child: const Text('Custom Text Color'),
            ),
            const SizedBox(height: 20),

            // Example 3: TextButton with custom padding
            TextButton(
              onPressed: () {
                print('Custom Padding Button');
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Custom padding
              ),
              child: const Text('Custom Padding'),
            ),
            const SizedBox(height: 20),

            // Example 4: TextButton with custom background color
            TextButton(
              onPressed: () {
                print('Custom Background Color');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow, // Background color
                foregroundColor: Colors.black, // Text color
              ),
              child: const Text('Custom Background Color'),
            ),
            const SizedBox(height: 20),

            // Example 5: Disabled TextButton
            TextButton(
              onPressed: null, // Button is disabled
              child: const Text('Disabled TextButton'),
            ),
            const SizedBox(height: 20),

            // Example 6: TextButton with Icon
            TextButton.icon(
              onPressed: () {
                print('Icon Button Pressed');
              },
              icon: const Icon(Icons.access_alarm),
              label: const Text('Alarm'),
            ),
            const SizedBox(height: 20),

            // Example 7: TextButton with Icon-only
            TextButton.icon(
              onPressed: () {
                print('Icon-only Button Pressed');
              },
              icon: const Icon(Icons.home),
              label: const SizedBox(), // Empty label for icon-only button
            ),
          ],
        ),
      ),
    );
  }
}
