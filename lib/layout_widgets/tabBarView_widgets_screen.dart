import 'package:flutter/material.dart';

class TabBarViewExample extends StatelessWidget {
  const TabBarViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBarView Widget Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.info), text: 'Info'),
            ],
          ),
        ),
        body: TabBarView(
          // Scroll physics (optional)
          physics: const BouncingScrollPhysics(),
          // Tab content
          children: [
            // Tab 1: Home
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.home, size: 100, color: Colors.blue),
                  SizedBox(height: 16),
                  Text('Home Tab Content', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
            // Tab 2: Settings
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.settings, size: 100, color: Colors.green),
                  SizedBox(height: 16),
                  Text('Settings Tab Content', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
            // Tab 3: Info
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                Text('Tab 3: Info Content', style: TextStyle(fontSize: 24)),
                SizedBox(height: 16),
                Text(
                  'This is an example of using ListView inside a TabBarView. '
                      'You can scroll this content independently.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
