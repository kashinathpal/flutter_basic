import 'package:flutter/material.dart';

class CustomPointWidgetsScreen extends StatelessWidget {
  const CustomPointWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint Example'),
      ),
      body:  Center(
        child: CustomPaint(
          size: Size(300, 300), // Defines the size of the custom drawing area
          painter: MyPainter(), // Custom painter for custom drawing
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Draw a blue rectangle
    final Paint bluePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTWH(50, 50, 200, 100), bluePaint);

    // Draw a red circle
    final Paint redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, redPaint);

    // Draw some text
    final TextPainter textPainter = TextPainter(
      text: const TextSpan(
        text: 'Flutter',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, const Offset(80, 180));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint
  }
}
