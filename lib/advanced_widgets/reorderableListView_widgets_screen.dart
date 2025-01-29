import 'package:flutter/material.dart';

class ReorderableListViewWidgetsScreen extends StatelessWidget {
  const ReorderableListViewWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView Example'),
      ),
      body: const ReorderableListViewExample(),
    );
  }
}

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({Key? key}) : super(key: key);

  @override
  _ReorderableListViewExampleState createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  // List of items to display
  final List<String> _items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: _onReorder, // Handle reordering
      header: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Reorder the List',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      footer: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'End of List',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
      children: [
        for (int i = 0; i < _items.length; i++)
          ListTile(
            key: ValueKey(_items[i]), // Key is necessary for reordering
            title: Text(_items[i]),
            tileColor: Colors.tealAccent,
            trailing: const Icon(Icons.drag_handle), // Drag handle icon
          ),
      ],
    );
  }

  // Callback for reordering the items
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }
}
