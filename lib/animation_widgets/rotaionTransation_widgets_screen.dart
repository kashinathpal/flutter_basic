import 'package:flutter/material.dart';


class RotationTransitionExample extends StatefulWidget {
  const RotationTransitionExample({Key? key}) : super(key: key);

  @override
  _RotationTransitionExampleState createState() =>
      _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Controller for animation
  late Animation<double> _rotationAnimation; // Animation for rotation

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller with a duration of 3 seconds
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Define the rotation animation: a complete rotation (1 turn)
    _rotationAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ));

    // Start the animation when the widget is created
    _controller.repeat(); // Keep repeating the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotationTransition Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Wrap the widget you want to rotate with RotationTransition
        child: RotationTransition(
          turns: _rotationAnimation, // Bind the animation to the turns
          child: const Icon(
            Icons.refresh,
            size: 100.0,
            color: Colors.orange,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start the rotation animation when the button is pressed
          _controller.forward();
        },
        child: const Icon(Icons.rotate_right),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
