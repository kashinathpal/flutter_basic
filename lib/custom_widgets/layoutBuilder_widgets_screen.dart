import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // Access the parent widget's constraints
            double width = constraints.maxWidth;
            double height = constraints.maxHeight;

            // Decide the layout based on the available width
            if (width < 600) {
              // Small screen layout
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    width: width * 0.8,
                    height: height * 0.3,
                    child: const Center(child: Text('Small Screen')),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    color: Colors.green,
                    width: width * 0.8,
                    height: height * 0.3,
                    child: const Center(child: Text('Another Container')),
                  ),
                ],
              );
            } else {
              // Large screen layout
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    width: width * 0.4,
                    height: height * 0.5,
                    child: const Center(child: Text('Large Screen')),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    color: Colors.green,
                    width: width * 0.4,
                    height: height * 0.5,
                    child: const Center(child: Text('Another Container')),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
