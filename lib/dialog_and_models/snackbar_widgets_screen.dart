import 'package:flutter/material.dart';


class SnackBarExample extends StatelessWidget {
  const SnackBarExample({Key? key}) : super(key: key);

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('This is a SnackBar message'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          // Perform some action when the user taps "UNDO"
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Action undone!')),
          );
        },
      ),
      duration: const Duration(seconds: 4), // Duration for how long the SnackBar stays visible
      backgroundColor: Colors.blue, // Background color of the SnackBar
      behavior: SnackBarBehavior.floating, // Can be fixed or floating
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      margin: const EdgeInsets.all(20), // Margin around the SnackBar
      elevation: 6, // Elevation (shadow)
      dismissDirection: DismissDirection.horizontal, // Allow horizontal dismissal
    );

    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSnackBar(context); // Trigger SnackBar when button is pressed
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
