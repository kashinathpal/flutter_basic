import 'package:flutter/material.dart';

class SliverListExample extends StatelessWidget {
  const SliverListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliverList Example"),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar with a flexible space
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver List with SliverAppBar'),
              background: Image.network(
                'https://placekitten.com/800/400',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverList that uses SliverChildBuilderDelegate
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.star),
                  title: Text('Item $index'),
                  subtitle: Text('This is item number $index'),
                  tileColor: index.isEven ? Colors.blue.shade100 : Colors.blue.shade50,
                );
              },
              childCount: 50, // Number of items in the list
            ),
          ),

          // SliverList with SliverChildListDelegate (static list)
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                    (index) => ListTile(
                  leading: const Icon(Icons.access_alarm),
                  title: Text('Static Item $index'),
                  subtitle: Text('Static content for item $index'),
                  tileColor: index.isEven ? Colors.green.shade100 : Colors.green.shade50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
