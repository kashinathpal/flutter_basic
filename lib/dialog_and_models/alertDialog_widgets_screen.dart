import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents dismissal by tapping outside the dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert Dialog Title'),
          content: const Text('This is the content of the alert dialog.'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
          elevation: 24.0,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You pressed Cancel')),
                );
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You pressed OK')),
                );
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
