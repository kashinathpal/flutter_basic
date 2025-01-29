import 'package:flutter/material.dart';


class OpacityDemo extends StatefulWidget {
  const OpacityDemo({Key? key}) : super(key: key);

  @override
  _OpacityDemoState createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  double _opacity = 1.0;  // Start with full opacity

  // Function to toggle opacity between 0.0 and 1.0
  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle opacity value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Opacity Widget: Adjusts the opacity of its child widget
            Opacity(
              opacity: _opacity,  // Control opacity value
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Opacity Example',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Button to toggle opacity
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Toggle Opacity'),
            ),

            const SizedBox(height: 20),

            // Animated Opacity for smooth transition
            AnimatedOpacity(
              opacity: _opacity,  // Control opacity value
              duration: const Duration(seconds: 1),  // Duration of the fade effect
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Animated Opacity',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
