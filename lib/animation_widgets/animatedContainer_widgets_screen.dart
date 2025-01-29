import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  // Properties for the AnimatedContainer
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  Alignment _alignment = Alignment.center;

  void _animateContainer() {
    setState(() {
      // Toggle between two sets of properties
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 150 : 100;
      _color = _color == Colors.blue ? Colors.orange : Colors.blue;
      _borderRadius =
      _borderRadius == BorderRadius.circular(8) ? BorderRadius.circular(30) : BorderRadius.circular(8);
      _alignment = _alignment == Alignment.center
          ? Alignment.bottomRight
          : Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1), // Animation duration
            curve: Curves.easeInOut, // Animation curve
            width: _width, // Animated width
            height: _height, // Animated height
            alignment: _alignment, // Animated alignment
            decoration: BoxDecoration(
              color: _color, // Animated color
              borderRadius: _borderRadius, // Animated border radius
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.star,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _animateContainer,
            child: const Text('Animate Container'),
          ),
        ],
      ),
    );
  }
}
