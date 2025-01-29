import 'package:flutter/material.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0; // Tracks the current tab index

  // List of screens corresponding to each tab
  final List<Widget> _screens = [
    const Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Example'),
      ),
      body: _screens[_currentIndex], // Displays the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Go to Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            tooltip: 'Search for items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            tooltip: 'View your profile',
          ),
        ],
        currentIndex: _currentIndex, // Highlights the selected tab
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting, // Shifting effect on tab change
        backgroundColor: Colors.white, // Navigation bar background color
        selectedItemColor: Colors.blue, // Color for the selected tab
        unselectedItemColor: Colors.grey, // Color for unselected tabs
        selectedFontSize: 14, // Font size of the selected tab's label
        unselectedFontSize: 12, // Font size of unselected tabs' labels
        iconSize: 24, // Size of the icons
        showSelectedLabels: true, // Whether to show labels for selected tabs
        showUnselectedLabels: true, // Whether to show labels for unselected tabs
        elevation: 8.0, // Shadow of the navigation bar
      ),
    );
  }
}
