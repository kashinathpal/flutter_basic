import 'package:flutter/material.dart';

class IconButtonWidgetsScreen extends StatelessWidget {
  const IconButtonWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IconButton Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Example 1: Basic IconButton
            IconButton(
              onPressed: () {
                print('Basic IconButton Pressed');
              },
              icon: const Icon(Icons.home),
            ),
            const SizedBox(height: 20),

            // Example 2: IconButton with custom icon color
            IconButton(
              onPressed: () {
                print('Custom Icon Color');
              },
              icon: const Icon(Icons.favorite),
              color: Colors.red, // Custom icon color
            ),
            const SizedBox(height: 20),

            // Example 3: IconButton with custom icon size
            IconButton(
              onPressed: () {
                print('Custom Icon Size');
              },
              icon: const Icon(Icons.star),
              iconSize: 50, // Custom icon size
            ),
            const SizedBox(height: 20),

            // Example 4: IconButton with custom padding
            IconButton(
              onPressed: () {
                print('Custom Padding Button');
              },
              icon: const Icon(Icons.access_alarm),
              padding: const EdgeInsets.all(20), // Custom padding
            ),
            const SizedBox(height: 20),

            // Example 5: IconButton with tooltip
            IconButton(
              onPressed: () {
                print('Button with Tooltip');
              },
              icon: const Icon(Icons.info),
              tooltip: 'Information', // Tooltip on long press
            ),
            const SizedBox(height: 20),

            // Example 6: IconButton with custom splash color
            IconButton(
              onPressed: () {
                print('Custom Splash Color');
              },
              icon: const Icon(Icons.favorite),
              splashColor: Colors.blue, // Custom splash color
            ),
            const SizedBox(height: 20),

            // Example 7: IconButton with custom highlight color
            IconButton(
              onPressed: () {
                print('Custom Highlight Color');
              },
              icon: const Icon(Icons.settings),
              highlightColor: Colors.green, // Custom highlight color
            ),
            const SizedBox(height: 20),

            // Example 8: Disabled IconButton
            IconButton(
              onPressed: null, // Button is disabled
              icon: const Icon(Icons.disabled_by_default),
            ),
          ],
        ),
      ),
    );
  }
}
