import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          // SliverAppBar
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('CustomScrollView Example'),
              background: Image.network(
                'https://source.unsplash.com/random',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('List Item ${index + 1}'),
                subtitle: const Text('This is a sliver list item'),
              ),
              childCount: 10,
            ),
          ),
          // SliverGrid
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'Grid Item ${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                childCount: 8,
              ),
            ),
          ),
          // SliverToBoxAdapter
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'This is a SliverToBoxAdapter wrapping a non-sliver widget.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // SliverFillRemaining
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.orangeAccent,
              child: const Center(
                child: Text(
                  'This area fills the remaining space.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
