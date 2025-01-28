import 'package:flutter/material.dart';


class PaddingWidgetsScreen extends StatelessWidget {
  const PaddingWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Widget Features')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Basic Padding
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Basic Padding',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              // Symmetric Padding
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Symmetric Padding (Horizontal: 20, Vertical: 10)',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              // Padding with Specific Edges
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  'Padding with Specific Edges (Top: 20, Left: 10)',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              // Nested Padding
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Nested Padding',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              // Adaptive Padding
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  'Adaptive Padding (5% of Screen Width)',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              // Padding with Elevated Button
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Button with Padding'),
                ),
              ),

              // Padding with Container
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Container with Padding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
