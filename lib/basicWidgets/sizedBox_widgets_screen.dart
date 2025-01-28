import 'package:flutter/material.dart';

class SizedBoxWidgetsScreen extends StatelessWidget {
  const SizedBoxWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Widget Features')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fixed Width and Height
          const SizedBox(
            width: 100,
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Fixed Box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10), // Spacer

          // Empty Space
          const SizedBox(height: 20), // Adds vertical space
          const Text('Below Empty Space'),

          // Constrained Dimensions
          Row(
            children: const [
              SizedBox(
                width: 100,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.orange),
                  child: Center(
                    child: Text('Box 1'),
                  ),
                ),
              ),
              SizedBox(width: 10), // Spacer
              SizedBox(
                width: 150,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.purple),
                  child: Center(
                    child: Text(
                      'Box 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10), // Spacer

          // Infinite Width
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  'Full Width Box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10), // Spacer

          // Spacer Example
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Start'),
              SizedBox(width: 50), // Spacer between elements
              Text('Middle'),
              SizedBox(width: 50),
              Text('End'),
            ],
          ),

          const SizedBox(height: 10), // Spacer

          // Placeholder for Layout
          Row(
            children: [
              const SizedBox(width: 100), // Placeholder space
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
                child: const Center(child: Text('Box')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
