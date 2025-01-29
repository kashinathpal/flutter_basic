import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Intercepting the back button press and showing a dialog
        bool shouldPop = await _showExitDialog(context);
        return shouldPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("WillPopScope Example"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the second screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Text("Go to Second Screen"),
          ),
        ),
      ),
    );
  }

  // Function to show a dialog to confirm exit
  Future<bool> _showExitDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false, // Disable dismiss by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Do you really want to exit?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Do not pop the screen
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Allow the pop
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    ) ?? false;
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Intercepting the back button press and allowing it
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate back to the first screen
              Navigator.pop(context);
            },
            child: Text("Go Back to First Screen"),
          ),
        ),
      ),
    );
  }
}
