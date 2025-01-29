import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          // Row Example with Flexible
          Container(
            height: 100,
            color: Colors.grey[200],
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1 Flex\nTight',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2 Flex\nTight',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3 Flex\nLoose',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Column Example with Flexible
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.grey[300],
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        '1 Flex\nTight',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        '2 Flex\nTight',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        '1 Flex\nLoose',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
