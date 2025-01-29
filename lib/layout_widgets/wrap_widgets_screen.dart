import 'package:flutter/material.dart';


class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          direction: Axis.horizontal, // Horizontal layout
          spacing: 10, // Space between children horizontally
          runSpacing: 15, // Space between lines vertically
          alignment: WrapAlignment.center, // Align children in the main axis
          runAlignment: WrapAlignment.start, // Align lines in the cross axis
          crossAxisAlignment: WrapCrossAlignment.center, // Align children within a run
          children: List.generate(
            15,
                (index) => Container(
              width: (index % 3 + 1) * 50.0, // Varying width for demonstration
              height: 50,
              decoration: BoxDecoration(
                color: Colors.primaries[index % Colors.primaries.length],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
