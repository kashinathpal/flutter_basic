import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  // PageController to control page navigation
  final PageController _pageController = PageController();

  // Tracking the current page index
  int _currentPage = 0;

  // List of pages to display
  final List<Widget> pages = [
    Container(color: Colors.red, child: const Center(child: Text('Page 1', style: TextStyle(fontSize: 24, color: Colors.white)))),
    Container(color: Colors.green, child: const Center(child: Text('Page 2', style: TextStyle(fontSize: 24, color: Colors.white)))),
    Container(color: Colors.blue, child: const Center(child: Text('Page 3', style: TextStyle(fontSize: 24, color: Colors.white)))),
    Container(color: Colors.orange, child: const Center(child: Text('Page 4', style: TextStyle(fontSize: 24, color: Colors.white)))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PageView Example')),
      body: Column(
        children: [
          // PageView widget
          Expanded(
            child: PageView.builder(
              controller: _pageController, // PageController to control the current page
              itemCount: pages.length, // Total number of pages
              itemBuilder: (context, index) {
                return pages[index];
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index; // Update current page index when the page changes
                });
              },
            ),
          ),

          // Page indicator (Dots)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                    (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 10,
                  width: _currentPage == index ? 20 : 10, // Adjust size based on the active page
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
