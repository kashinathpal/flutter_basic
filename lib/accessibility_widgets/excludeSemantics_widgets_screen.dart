import 'package:flutter/material.dart';

class ExcludeSemanticsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ExcludeSemantics for a group of widgets
          Text(
            'This is a normal Text widget.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),

          // ExcludeSemantics to hide a widget from screen readers
          ExcludeSemantics(
            child: Row(
              children: [
                Icon(Icons.visibility, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'This text and icon will not be read by screen readers.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ExcludeSemantics for another widget group
          ExcludeSemantics(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Click Me'),
            ),
          ),

          SizedBox(height: 20),

          // ExcludeSemantics for a Switch widget
          ExcludeSemantics(
            child: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
        ],
      ),
    );
  }
}
