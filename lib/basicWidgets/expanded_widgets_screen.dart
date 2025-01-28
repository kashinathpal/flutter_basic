import 'package:flutter/material.dart';

class ExpandedWidgetsScreen extends StatelessWidget {
  const ExpandedWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Widget Features')),
      body: Column(
        children: [
          // Row with Equal Expansion
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'Red Box',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Blue Box',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Row with Flex Factors
          Row(
            children: [
              Expanded(
                flex: 3, // Occupies 3 parts
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Green Box\n(Flex: 3)',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1, // Occupies 1 part
                child: Container(
                  height: 100,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Orange Box\n(Flex: 1)',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Column with Expanded
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Purple Box',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2, // Takes more space
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        'Yellow Box\n(Flex: 2)',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Flexible vs Expanded Comparison
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.cyan,
                  child: const Center(
                    child: Text(
                      'Flexible Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.indigo,
                  child: const Center(
                    child: Text(
                      'Expanded Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
