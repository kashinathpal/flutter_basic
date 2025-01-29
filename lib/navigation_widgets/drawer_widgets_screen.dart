import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with Drawer Icon
      appBar: AppBar(
        title: Text('Drawer Example'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Open the drawer when the menu icon is pressed
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      // Drawer widget
      drawer: Drawer(
        child: Column(
          children: [
            // Custom Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.account_circle, size: 50, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello, User!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Drawer Items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the tap event
                Navigator.pop(context);  // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the tap event
                Navigator.pop(context);  // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Handle the tap event
                Navigator.pop(context);  // Close the drawer
              },
            ),
            Divider(), // Adds a divider between items
            // Persistent Drawer Item
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
              onTap: () {
                // Handle the tap event
                Navigator.pop(context);  // Close the drawer
              },
            ),
          ],
        ),
      ),

      // Main Body Content
      body: Center(
        child: Text(
          'Welcome to the Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),

      // Drawer button in AppBar
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open drawer using the FAB
          Scaffold.of(context).openDrawer();
        },
        child: Icon(Icons.menu),
      ),
    );
  }
}
