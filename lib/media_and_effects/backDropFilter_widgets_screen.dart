import 'dart:ui';
import 'package:flutter/material.dart';

class BackdropFilterDemo extends StatelessWidget {
  const BackdropFilterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilter Widget Demo'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://flutter.dev/images/flutter-logo-sharing.png',
            fit: BoxFit.cover,
          ),
          // BackdropFilter applying a blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blurring the background
            child: Container(
              color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Frosted Glass Effect',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'This is a blurred background with frosted effect.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
