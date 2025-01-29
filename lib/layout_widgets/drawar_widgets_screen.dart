import 'package:flutter/material.dart';

class DrawerWidgetsScreen extends StatelessWidget {
  const DrawerWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Drawer Example'),
      ),
      // Drawer widget
      drawer: Drawer(
        elevation: 16.0, // Shadow of the drawer
        backgroundColor: Colors.blueGrey, // Drawer background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer header
            const UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blue),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            // Drawer items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Home clicked')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Settings clicked')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contact clicked')),
                );
              },
            ),
            // Divider
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log Out'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Log Out clicked')),
                );
              },
            ),
          ],
        ),
      ),
      // Main content
      body: const Center(
        child: Text('Welcome to the Drawer Example'),
      ),
      // End drawer
      endDrawer: Drawer(
        elevation: 16.0, // Shadow of the end drawer
        backgroundColor: Colors.orange, // End drawer background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Jane Doe'),
              accountEmail: Text('jane.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.green),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Help clicked')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('About clicked')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
