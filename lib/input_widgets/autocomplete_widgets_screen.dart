import 'package:flutter/material.dart';

class AutoCompleteWidgetsScreen extends StatefulWidget {
  const AutoCompleteWidgetsScreen({super.key});

  @override
  _AutoCompleteWidgetsScreenState createState() => _AutoCompleteWidgetsScreenState();
}

class _AutoCompleteWidgetsScreenState extends State<AutoCompleteWidgetsScreen> {
  final TextEditingController _controller = TextEditingController();

  // Sample data for autocomplete suggestions
  final List<String> _items = [
    'Apple',
    'Banana',
    'Grapes',
    'Mango',
    'Orange',
    'Pineapple',
    'Strawberry',
    'Watermelon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Autocomplete Widget Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Autocomplete widget
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return _items.where((item) => item
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase()));
              },
              onSelected: (String selection) {
                // Handle selection
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected: $selection')),
                );
              },
              fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
                // Custom input field design
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    labelText: 'Search Fruit',
                    border: OutlineInputBorder(),
                  ),
                  onEditingComplete: onEditingComplete,
                );
              },
              displayStringForOption: (String option) => option, // Display the option string directly
              // clearOnSubmit: true, // Clear the input field after selection
            ),
            const SizedBox(height: 20),

            // Manual input TextField with controller (optional use case)
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Manual Entry',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
