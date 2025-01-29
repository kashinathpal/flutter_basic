import 'package:flutter/material.dart';

class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({Key? key}) : super(key: key);

  @override
  _NotificationListenerExampleState createState() => _NotificationListenerExampleState();
}

class _NotificationListenerExampleState extends State<NotificationListenerExample> {
  // To track if a notification was received
  String _notificationMessage = "No notification received";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationListener Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the notification message
            Text(
              _notificationMessage,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Wrap the notification listener around a Scrollable widget
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                // This callback is triggered whenever a scroll notification is sent
                setState(() {
                  _notificationMessage = "Scroll notification received!";
                });
                // Returning true stops the notification from being passed further up the tree
                return true;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    30,
                        (index) => ListTile(
                      title: Text('Item #$index'),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // A button to simulate a different notification
            ElevatedButton(
              onPressed: () {
                // Dispatch a custom notification when this button is pressed
                setState(() {
                  _notificationMessage = "Custom notification triggered!";
                });
              },
              child: const Text("Trigger Custom Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
