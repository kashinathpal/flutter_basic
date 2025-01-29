import 'package:flutter/material.dart';

class DraggableScrollableSheetExample extends StatelessWidget {
  const DraggableScrollableSheetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet Example'),
      ),
      body: Stack(
        children: [
          // Main content
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Button to show the draggable sheet
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: const Text('Click Me'),
            ),
          ),

          // DraggableScrollableSheet
          DraggableScrollableSheet(
            initialChildSize: 0.2,  // Initial size when the sheet is first displayed
            minChildSize: 0.1,      // Minimum size of the sheet
            maxChildSize: 0.8,      // Maximum size of the sheet
            snap: true,             // Enable snapping
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blueGrey,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Draggable Sheet Content',
                          style: TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'This is some scrollable content inside the draggable sheet. You can drag this sheet up and down to show more or less content.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'More content here. Keep scrolling down to see the maximum size of the sheet.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Continue scrolling...',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'That’s it! You have reached the end of the sheet.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
