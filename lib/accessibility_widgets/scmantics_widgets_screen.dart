import 'package:flutter/material.dart';


class SemanticsExample extends StatelessWidget {
  const SemanticsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Semantics for a button
          Semantics(
            label: 'Click me to show a message',
            button: true,
            child: ElevatedButton(
              onPressed: () {
                // Action when the button is clicked
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Clicked')),
                );
              },
              child: Text('Click Me'),
            ),
          ),

          // Semantics for a switch
          SizedBox(height: 20),
          Semantics(
            label: 'Enable notifications',
            hint: 'Toggle to enable or disable notifications',
            child: Switch(
              value: true,
              onChanged: (bool value) {
                // Toggle notifications setting
              },
            ),
          ),

          // Semantics for a slider
          SizedBox(height: 20),
          Semantics(
            label: 'Set volume level',
            value: '5',
            hint: 'Adjust the volume by dragging the slider',
            child: Slider(
              value: 5,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (double value) {},
            ),
          ),

          // Semantics for a text field
          SizedBox(height: 20),
          Semantics(
            label: 'Enter your name',
            hint: 'Please enter your full name here',
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // Semantics for a progress indicator
          SizedBox(height: 20),
          Semantics(
            label: 'Loading...',
            child: CircularProgressIndicator(),
          ),

          // Semantics for a header
          SizedBox(height: 20),
          Semantics(
            label: 'Main Content Section',
            header: true,
            child: Text(
              'Main Content',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // Semantics for a selected item
          SizedBox(height: 20),
          Semantics(
            label: 'Selected item',
            selected: true,
            child: ListTile(
              leading: Icon(Icons.check),
              title: Text('This is a selected item'),
            ),
          ),
        ],
      ),
    );
  }
}
