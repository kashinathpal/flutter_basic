import 'package:flutter/material.dart';


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentIndex = 0; // Track the selected index

  // List of screens to navigate to
  final List<Widget> _screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Search Screen')),
    const Center(child: Text('Notifications Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  // Function to handle item taps
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Example'),
        backgroundColor: Colors.teal,
      ),
      body: _screens[_currentIndex], // Display the screen based on the selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal, // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        backgroundColor: Colors.white, // Background color of the bar
        elevation: 8.0, // Shadow depth for the bar
        type: BottomNavigationBarType.fixed, // Fixed type (no shifting)
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
