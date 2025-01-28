import 'package:flutter/material.dart';

class DividerWidgetsScreen extends StatelessWidget {
  const DividerWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Divider Widget Features')),
      body: ListView(
        children: [
          // Example 1: Simple Divider
          const ListTile(title: Text('Item 1')),
          const Divider(),

          // Example 2: Divider with Color
          const ListTile(title: Text('Item 2')),
          const Divider(color: Colors.blue),

          // Example 3: Divider with Thickness
          const ListTile(title: Text('Item 3')),
          const Divider(thickness: 5, color: Colors.green),

          // Example 4: Divider with Indent
          const ListTile(title: Text('Item 4')),
          const Divider(indent: 20, color: Colors.purple),

          // Example 5: Divider with EndIndent
          const ListTile(title: Text('Item 5')),
          const Divider(endIndent: 20, color: Colors.orange),

          // Example 6: Divider with Height
          const ListTile(title: Text('Item 6')),
          const Divider(height: 40, color: Colors.red),

          // Example 7: Custom Divider with Container
          const ListTile(title: Text('Item 7')),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 2,
            color: Colors.brown,
          ),

          // Example 8: Custom Divider with SizedBox
          const ListTile(title: Text('Item 8')),
          SizedBox(
            height: 10,
            child: Divider(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
