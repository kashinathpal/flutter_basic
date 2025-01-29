import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollView Example'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar - a collapsible app bar
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Collapsible AppBar'),
              background: Image(
                image: NetworkImage('https://via.placeholder.com/800x200'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SliverList - a scrolling list of items
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text('Item #$index'),
                    subtitle: const Text('This is a list item'),
                  ),
                );
              },
              childCount: 20, // Number of items in the list
            ),
          ),
          // SliverGrid - a grid of items
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'Grid Item #$index',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
              childCount: 10, // Number of items in the grid
            ),
          ),
          // SliverToBoxAdapter - static content (e.g., a widget that is not scrollable)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'This is a static widget that doesn\'t scroll with the CustomScrollView.',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          // SliverFillRemaining - takes up remaining space
          const SliverFillRemaining(
            child: Center(
              child: Text(
                'End of the content',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
