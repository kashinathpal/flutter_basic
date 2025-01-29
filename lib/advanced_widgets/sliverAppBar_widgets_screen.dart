import 'package:flutter/material.dart';



class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0, // Height when fully expanded
            pinned: true, // Keeps the app bar visible after scrolling
            floating: true, // Makes the app bar float when scrolling up
            snap: true, // Makes the app bar snap back into place when scrolling up
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar Example'),
              background: Image.network(
                'https://placekitten.com/800/400',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          // SliverList for displaying a list of items
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50, // Total number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}
