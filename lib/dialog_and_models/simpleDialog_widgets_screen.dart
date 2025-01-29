import 'package:flutter/material.dart';


class SimpleDialogExample extends StatelessWidget {
  const SimpleDialogExample({Key? key}) : super(key: key);

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Choose an Option'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
          elevation: 24.0,
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You chose Option 1')),
                );
              },
              child: const Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You chose Option 2')),
                );
              },
              child: const Text('Option 2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You chose Option 3')),
                );
              },
              child: const Text('Option 3'),
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
        title: const Text('SimpleDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSimpleDialog(context),
          child: const Text('Show SimpleDialog'),
        ),
      ),
    );
  }
}
