import 'package:flutter/material.dart';


class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({Key? key}) : super(key: key);

  @override
  _ScaleTransitionExampleState createState() =>
      _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Controller for animation
  late Animation<double> _scaleAnimation; // Animation for scaling

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller with a duration of 2 seconds
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the scale animation: from 0.0 (invisible) to 1.0 (original size)
    _scaleAnimation =
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
        title: const Text('ScaleTransition Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Wrap the widget you want to scale with ScaleTransition
        child: ScaleTransition(
          scale: _scaleAnimation, // Bind the animation to the scale
          alignment: Alignment.center, // Scaling happens from the center
          child: const Icon(
            Icons.star,
            size: 100.0,
            color: Colors.orange,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start the scaling animation when the button is pressed
          _controller.forward();
        },
        child: const Icon(Icons.play_arrow),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
