import 'package:flutter/material.dart';


class SlideTransitionExample extends StatefulWidget {
  const SlideTransitionExample({Key? key}) : super(key: key);

  @override
  _SlideTransitionExampleState createState() => _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Controller to manage the animation
  late Animation<Offset> _offsetAnimation; // Animation to control the slide

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller with a duration of 2 seconds
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the slide animation
    _offsetAnimation = Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

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
        title: const Text('SlideTransition Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Wrap the widget you want to animate with SlideTransition
        child: SlideTransition(
          position: _offsetAnimation, // Apply the slide animation
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
