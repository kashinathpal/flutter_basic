import 'package:flutter/material.dart';


class BuilderDemo extends StatelessWidget {
  const BuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Widget Demo'),
      ),
      body: Column(
        children: [
          // Builder widget to access the BuildContext
          Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Using context to show a SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('This is a SnackBar!'),
                      ),
                    );
                  },
                  child: const Text('Show SnackBar'),
                ),
              );
            },
          ),
          // Another builder widget that accesses the context
          Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Using context to show a Dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Dialog Title'),
                          content: const Text('This is a sample dialog.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Show Dialog'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
