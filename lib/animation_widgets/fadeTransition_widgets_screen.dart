import 'package:flutter/material.dart';


class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({Key? key}) : super(key: key);

  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Controller to control the animation
  late Animation<double> _opacityAnimation; // Animation to control the opacity

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller with a duration of 2 seconds
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the fade animation
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start the animation when the widget is created
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeTransition Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Wrap the widget you want to animate with FadeTransition
        child: FadeTransition(
          opacity: _opacityAnimation, // Apply the animation to control opacity
          child: const Icon(
            Icons.star,
            size: 100.0,
            color: Colors.orange,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Reverse the animation when the button is pressed
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
