import 'package:flutter/material.dart';

class HeroWidgetsScreen extends StatelessWidget {
  const HeroWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Widget Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to the second screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen()),
            );
          },
          child: Hero(
            tag: 'hero-tag', // Same tag across both screens
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-7f63e8ab35ea6c07c9a14f9f736ae84b07a091b250f4f31965d717220c37f75b.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-tag', // Same tag as the first screen
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-7f63e8ab35ea6c07c9a14f9f736ae84b07a091b250f4f31965d717220c37f75b.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
