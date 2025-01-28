import 'package:flutter/material.dart';

class ElevatedButtonWidgetsScreen extends StatelessWidget {
  const ElevatedButtonWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ElevatedButton Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Example 1: Basic ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              child: const Text('Basic ElevatedButton'),
            ),
            const SizedBox(height: 20),

            // Example 2: ElevatedButton with custom color
            ElevatedButton(
              onPressed: () {
                print('Custom Color Button');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
                onPrimary: Colors.white, // Text color
              ),
              child: const Text('Custom Background Color'),
            ),
            const SizedBox(height: 20),

            // Example 3: ElevatedButton with custom elevation
            ElevatedButton(
              onPressed: () {
                print('Elevated Button with Elevation');
              },
              style: ElevatedButton.styleFrom(
                elevation: 10, // Custom elevation
              ),
              child: const Text('Custom Elevation'),
            ),
            const SizedBox(height: 20),

            // Example 4: ElevatedButton with rounded corners
            ElevatedButton(
              onPressed: () {
                print('Rounded Button');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              child: const Text('Rounded Corners'),
            ),
            const SizedBox(height: 20),

            // Example 5: ElevatedButton with custom padding
            ElevatedButton(
              onPressed: () {
                print('Custom Padding Button');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Custom padding
              ),
              child: const Text('Custom Padding'),
            ),
            const SizedBox(height: 20),

            // Example 6: Disabled ElevatedButton
            ElevatedButton(
              onPressed: null, // Button is disabled
              child: const Text('Disabled Button'),
            ),
            const SizedBox(height: 20),

            // Example 7: ElevatedButton with Icon
            ElevatedButton.icon(
              onPressed: () {
                print('Icon Button Pressed');
              },
              icon: const Icon(Icons.access_alarm),
              label: const Text('Alarm'),
            ),
            const SizedBox(height: 20),

            // Example 8: ElevatedButton with Icon-only
            ElevatedButton.icon(
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
