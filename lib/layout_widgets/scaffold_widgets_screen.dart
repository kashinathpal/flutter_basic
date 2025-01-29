import 'package:flutter/material.dart';


class ScaffoldWidgetsScreen extends StatefulWidget {
  const ScaffoldWidgetsScreen({super.key});

  @override
  _ScaffoldWidgetsScreenState createState() => _ScaffoldWidgetsScreenState();
}

class _ScaffoldWidgetsScreenState extends State<ScaffoldWidgetsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const Text('Home Screen'),
    const Text('Search Screen'),
    const Text('Profile Screen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top of the screen
      appBar: AppBar(
        title: const Text('Scaffold Example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications clicked')),
              );
            },
          ),
        ],
      ),

      // Body of the Scaffold where the main content goes
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // Drawer for navigation
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Search'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar for app-level navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

      // Floating Action Button that hovers over the screen content
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button clicked')),
          );
        },
        child: const Icon(Icons.add),
      ),

      // Bottom Sheet that slides up from the bottom
      bottomSheet: Container(
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(16.0),
        child: const Text('This is a bottom sheet'),
      ),

      // Persistent footer buttons that stay at the bottom of the screen
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Footer Button clicked')),
            );
          },
          child: const Text('Footer Button'),
        ),
      ],

      // Background color of the Scaffold body
      backgroundColor: Colors.lightBlue[50],

      // Resize to avoid bottom inset (keyboard)
      resizeToAvoidBottomInset: true,

      // End Drawer (another slide-in menu from the right)
      endDrawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('End Drawer Header'),
            ),
            ListTile(
              title: Text('End Drawer Item'),
            ),
          ],
        ),
      ),
    );
  }
}
