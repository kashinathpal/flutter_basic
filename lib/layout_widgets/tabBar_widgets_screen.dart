import 'package:flutter/material.dart';


class TabBarWidgetsScreen extends StatelessWidget {
  const TabBarWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget Example'),
          bottom: TabBar(
            isScrollable: true, // Enables scrolling for multiple tabs
            indicatorColor: Colors.white, // Tab indicator color
            indicatorWeight: 4.0, // Tab indicator thickness
            indicatorSize: TabBarIndicatorSize.label, // Indicator size (tab/label)
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 8), // Indicator padding
            labelColor: Colors.yellow, // Color of the selected tab
            unselectedLabelColor: Colors.white70, // Color of unselected tabs
            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Selected label style
            unselectedLabelStyle: const TextStyle(fontSize: 14), // Unselected label style
            tabs: const [
              Tab(text: 'Home', icon: Icon(Icons.home)), // Tab with text and icon
              Tab(text: 'Search', icon: Icon(Icons.search)),
              Tab(text: 'Notifications', icon: Icon(Icons.notifications)),
              Tab(text: 'Profile', icon: Icon(Icons.person)),
            ],
            onTap: (index) {
              print('Selected Tab: $index'); // Logs the selected tab index
            },
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Search Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Notifications Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
