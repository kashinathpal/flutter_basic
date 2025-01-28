import 'package:flutter/material.dart';


class StackWidgetsScreen extends StatelessWidget {
  const StackWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Widget Features')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: [
            // Background container
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            // Centered text
            const Text(
              'Stack Example',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Positioned top-left icon
            Positioned(
              top: 10,
              left: 10,
              child: Icon(Icons.star, size: 50, color: Colors.yellow),
            ),
            // Positioned bottom-right icon
            Positioned(
              bottom: -20,
              right: -20,
              child: Icon(Icons.favorite, size: 50, color: Colors.red),
            ),
            // Positioned container with gradient
            Positioned(
              bottom: 20,
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.pink],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Gradient Box',
                    style: TextStyle(color: Colors.white),
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
