import 'package:flutter/material.dart';


class TransformDemo extends StatefulWidget {
  const TransformDemo({Key? key}) : super(key: key);

  @override
  _TransformDemoState createState() => _TransformDemoState();
}

class _TransformDemoState extends State<TransformDemo> {
  // Variables to control transformation
  double _rotateAngle = 0.0;
  double _scaleFactor = 1.0;
  double _translateX = 0.0;
  double _translateY = 0.0;

  // Function to reset transformations
  void _resetTransformations() {
    setState(() {
      _rotateAngle = 0.0;
      _scaleFactor = 1.0;
      _translateX = 0.0;
      _translateY = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Apply multiple transformations to the container
            Transform(
              alignment: Alignment.center,  // Set alignment of transformation
              transform: Matrix4.identity()
                ..rotateZ(_rotateAngle)  // Rotation transformation
                ..scale(_scaleFactor)  // Scaling transformation
                ..translate(_translateX, _translateY),  // Translation transformation
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Transformed Box',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Buttons to control transformations
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _rotateAngle += 0.1;  // Increase rotation
                });
              },
              child: const Text('Rotate'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _scaleFactor += 0.1;  // Increase scaling
                });
              },
              child: const Text('Scale'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _translateX += 10;  // Move horizontally
                });
              },
              child: const Text('Translate Right'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _translateY += 10;  // Move vertically
                });
              },
              child: const Text('Translate Down'),
            ),
            ElevatedButton(
              onPressed: _resetTransformations,
              child: const Text('Reset Transformations'),
            ),
          ],
        ),
      ),
    );
  }
}
