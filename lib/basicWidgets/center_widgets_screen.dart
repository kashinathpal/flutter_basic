import 'package:flutter/material.dart';

class CenterWidgetsScreen extends StatelessWidget {
  const CenterWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Widget Features')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Basic Centered Text
            Center(
              child: Text(
                'Basic Centered Text',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            SizedBox(height: 20),

            // Center with Container
            Center(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Centered in Container',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Center with Padding
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Centered with Padding',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Nested Center with Column
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, size: 40, color: Colors.orange),
                  SizedBox(height: 10),
                  Text(
                    'Nested Center',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Center with Decoration
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Styled Center',
                    textAlign: TextAlign.center,
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
