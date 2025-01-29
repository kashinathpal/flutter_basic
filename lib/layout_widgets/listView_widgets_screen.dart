import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Features Example'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Vertical ListView with Padding and ShrinkWrap',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text('Item ${index + 1}'),
                    subtitle: const Text('This is a subtitle'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tapped on Item ${index + 1}')),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Horizontal ListView with Reverse Scrolling',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              children: List.generate(
                10,
                    (index) => Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                    child: Text(
                      'Box ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'ListView with Separators',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.amber.shade700,
                  ),
                  title: Text('Favorite Item ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
