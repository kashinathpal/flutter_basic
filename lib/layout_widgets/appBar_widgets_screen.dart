import 'package:flutter/material.dart';

class AppBarWidgetsScreen extends StatelessWidget {
  const AppBarWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Title of the AppBar
        title: const Text('AppBar Example'),

        // Leading icon, typically for a menu or back button
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu clicked')),
            );
          },
        ),

        // Actions, typically buttons or icons that appear at the end of the AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search clicked')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications clicked')),
              );
            },
          ),
        ],

        // Elevation controls the shadow of the AppBar
        elevation: 10.0,

        // Background color of the AppBar
        backgroundColor: Colors.deepPurple,

        // Center the title in the AppBar
        centerTitle: true,

        // Bottom tab bar (optional)
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(50.0),
        //   child: Container(
        //     color: Colors.white,
        //     child: const TabBar(
        //       tabs: [
        //         Tab(icon: Icon(Icons.home)),
        //         Tab(icon: Icon(Icons.star)),
        //       ],
        //     ),
        //   ),
        // ),

        // Flexible space that can take up full height (good for gradient, image, etc.)
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        // Custom height for the AppBar
        toolbarHeight: 80.0,

        // Automatically implies a back button if needed (based on navigation stack)
        automaticallyImplyLeading: true,
      ),
      body: const Center(
        child: Text('AppBar Example Body'),
      ),
    );
  }
}
