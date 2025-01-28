import 'package:flutter/material.dart';

class MergeSemanticsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MergeSemantics for a group of widgets
          MergeSemantics(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Text widget
                Semantics(
                  label: 'Name field',
                  child: Text(
                    'Enter your name:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                // TextField widget for name input
                Semantics(
                  label: 'Name input',
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // MergeSemantics for a button group
          MergeSemantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // First Button widget
                Semantics(
                  label: 'Add to Cart',
                  button: true,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                  ),
                ),
                SizedBox(width: 10),
                // Second Button widget
                Semantics(
                  label: 'Proceed to Checkout',
                  button: true,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Proceed to Checkout'),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // MergeSemantics for a switch group
          MergeSemantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // First Switch widget
                Semantics(
                  label: 'Enable notifications',
                  hint: 'Turn on to receive notifications',
                  child: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                SizedBox(width: 10),
                // Second Switch widget
                Semantics(
                  label: 'Enable sound',
                  hint: 'Turn on to enable sound notifications',
                  child: Switch(
                    value: false,
                    onChanged: (bool value) {},
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
