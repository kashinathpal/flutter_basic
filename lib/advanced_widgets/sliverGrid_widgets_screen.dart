import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliverGrid Example"),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar with a flexible space
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver Grid with SliverAppBar'),
              background: Image.network(
                'https://placekitten.com/800/400',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverGrid with SliverChildBuilderDelegate
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  color: Colors.blue.shade100,
                  child: Center(
                    child: Text('Item $index', style: const TextStyle(fontSize: 18)),
                  ),
                );
              },
              childCount: 30, // Number of grid items
            ),
          ),

          // SliverGrid with SliverChildListDelegate (static list)
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                    (index) => Card(
                  color: Colors.green.shade100,
                  child: Center(
                    child: Text('Static Item $index', style: const TextStyle(fontSize: 18)),
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
