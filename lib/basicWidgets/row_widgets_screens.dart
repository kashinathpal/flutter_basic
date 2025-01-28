import 'package:flutter/material.dart';


class RowWidgetsScreen extends StatelessWidget {
  const RowWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Widget Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Basic Row
            const Row(
              children: [
                Icon(Icons.home, color: Colors.blue),
                SizedBox(width: 10),
                Text('Home'),
              ],
            ),
            const SizedBox(height: 20),

            // Row with MainAxisAlignment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.settings, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 20),

            // Row with CrossAxisAlignment
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Top', style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Text('Align', style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 20),

            // Row with Expanded and Flexible
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: const Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.orange,
                    child: const Center(child: Text('Flexible')),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Row with Spacing
            Row(
              children: const [
                Icon(Icons.star, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.favorite, color: Colors.red),
                Spacer(),
                Icon(Icons.home, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
