import 'package:flutter/material.dart';

class ColumnWidgetsScreen extends StatelessWidget {
  const ColumnWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Column Widget Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Basic Column
              const Text(
                'Basic Column',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Column(
                children: [
                  Text('First Item'),
                  Text('Second Item'),
                  Text('Third Item'),
                ],
              ),
              const SizedBox(height: 20),

              // Column with MainAxisAlignment
              const Text(
                'MainAxisAlignment.spaceEvenly',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.favorite, color: Colors.red),
                  Icon(Icons.home, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),

              // Column with CrossAxisAlignment
              const Text(
                'CrossAxisAlignment.start',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Start Aligned'),
                  Text('This is a long text to show alignment.'),
                ],
              ),
              const SizedBox(height: 20),

              // Column with Expanded and Flexible
              const Text(
                'Expanded and Flexible',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green,
                      child: const Center(child: Text('Expanded')),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.orange,
                      child: const Center(child: Text('Flexible')),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Scrollable Column
              const Text(
                'Scrollable Column',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      20,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text('Item $index'),
                      ),
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
