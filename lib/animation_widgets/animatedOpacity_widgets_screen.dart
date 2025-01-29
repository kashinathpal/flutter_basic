import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  // Initial opacity value
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      // Toggle between visible (1.0) and invisible (0.0)
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity, // Animated opacity
            duration: const Duration(seconds: 1), // Duration of animation
            curve: Curves.easeInOut, // Smooth transition curve
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue, // Background color of the container
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Hello, Flutter!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleOpacity,
            child: Text(
              _opacity == 1.0 ? 'Fade Out' : 'Fade In',
            ),
          ),
        ],
      ),
    );
  }
}
