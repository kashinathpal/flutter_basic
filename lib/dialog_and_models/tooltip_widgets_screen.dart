import 'package:flutter/material.dart';


class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Example'),
      ),
      body: Center(
        child: Tooltip(
          message: 'This is a Tooltip!',
          waitDuration: const Duration(seconds: 1), // Time to wait before showing the Tooltip
          showDuration: const Duration(seconds: 2), // How long the Tooltip stays visible
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Background color of the Tooltip
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(12), // Padding around the Tooltip text
          child: IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // You can add functionality here for when the button is pressed
            },
          ),
        ),
      ),
    );
  }
}
