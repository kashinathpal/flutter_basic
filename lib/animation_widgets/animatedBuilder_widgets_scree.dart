import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Make the animation repeat in reverse

    // Create an animation that scales from 0 to 1
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when not in use
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation, // Pass the animation to drive the changes
          builder: (context, child) {
            // Use the animation value to transform the child widget
            return Transform.scale(
              scale: _animation.value, // Scale the widget based on animation value
              child: child, // Pass the static child to avoid unnecessary rebuilds
            );
          },
          child: const Icon(
            Icons.star,
            size: 100,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
