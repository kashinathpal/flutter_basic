import 'package:flutter/material.dart';


class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.0,
          color: Colors.blue[100],
          child: Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.info),
                title: Text('Information'),
                subtitle: Text('This is a modal bottom sheet.'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showPersistentBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250.0,
          color: Colors.green[100],
          child: Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Persistent Bottom Sheet'),
                subtitle: Text('This sheet remains visible until closed.'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showModalBottomSheet(context),
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showPersistentBottomSheet(context),
              child: const Text('Show Persistent Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
