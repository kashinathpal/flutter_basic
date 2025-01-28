import 'package:flutter/material.dart';

class OutlinedButtonWidgetsScreen extends StatelessWidget {
  const OutlinedButtonWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButton Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Example 1: Basic OutlinedButton
            OutlinedButton(
              onPressed: () {
                print('Basic OutlinedButton Pressed');
              },
              child: const Text('Basic OutlinedButton'),
            ),
            const SizedBox(height: 20),

            // Example 2: OutlinedButton with custom text color
            OutlinedButton(
              onPressed: () {
                print('Custom Text Color');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue, // Text color
              ),
              child: const Text('Custom Text Color'),
            ),
            const SizedBox(height: 20),

            // Example 3: OutlinedButton with custom border color
            OutlinedButton(
              onPressed: () {
                print('Custom Border Color');
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green, width: 2), // Border color and width
              ),
              child: const Text('Custom Border Color'),
            ),
            const SizedBox(height: 20),

            // Example 4: OutlinedButton with custom padding
            OutlinedButton(
              onPressed: () {
                print('Custom Padding Button');
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Custom padding
              ),
              child: const Text('Custom Padding'),
            ),
            const SizedBox(height: 20),

            // Example 5: OutlinedButton with rounded corners
            OutlinedButton(
              onPressed: () {
                print('Rounded Button');
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              child: const Text('Rounded Corners'),
            ),
            const SizedBox(height: 20),

            // Example 6: Disabled OutlinedButton
            OutlinedButton(
              onPressed: null, // Button is disabled
              child: const Text('Disabled OutlinedButton'),
            ),
            const SizedBox(height: 20),

            // Example 7: OutlinedButton with Icon
            OutlinedButton.icon(
              onPressed: () {
                print('Icon Button Pressed');
              },
              icon: const Icon(Icons.access_alarm),
              label: const Text('Alarm'),
            ),
            const SizedBox(height: 20),

            // Example 8: OutlinedButton with Icon-only
            OutlinedButton.icon(
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
