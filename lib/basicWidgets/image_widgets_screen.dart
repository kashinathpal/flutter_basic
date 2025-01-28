import 'dart:io';
import 'package:flutter/material.dart';

class ImageWidgetsScreen extends StatelessWidget {
  const ImageWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Image Features')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Asset Image
            Image.asset(
              'assets/images/example.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            // Network Image with Placeholder and Error Handling
            Image.network(
              'https://example.com/nonexistent.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50, color: Colors.red);
              },
            ),
            const SizedBox(height: 10),
            // File Image
            // Uncomment if the image file path is available
            Image.file(
              File('/path/to/image.png'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            // Memory Image (example byte array required)
            // Uncomment and provide valid byte data
            // Image.memory(
            //   bytes,
            //   width: 100,
            //   height: 100,
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }
}
