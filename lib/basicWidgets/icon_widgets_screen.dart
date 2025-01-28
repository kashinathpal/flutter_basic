import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class IconWidgetsScreen extends StatelessWidget {
  const IconWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Icon Features')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Basic Icon
            Icon(Icons.home, size: 40, color: Colors.blue),
            const SizedBox(height: 10),
            // Icon Button
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red),
              iconSize: 50,
              onPressed: () => print('Favorite clicked'),
            ),
            const SizedBox(height: 10),
            // Animated Icon (requires AnimationController)
            // Example with AnimatedIcon (menu close)
            // Uncomment if you have an animation controller
            // AnimatedIcon(
            //   icon: AnimatedIcons.menu_close,
            //   progress: animationController,
            // ),
            // Custom Icon Data
            Icon(
              IconData(0xe900, fontFamily: 'MaterialIcons'),
              size: 40,
            ),
            const SizedBox(height: 10),
            // ImageIcon
            ImageIcon(
              AssetImage('assets/icons/custom_icon.png'),
              size: 50,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            // FontAwesome Icon
            // FaIcon(FontAwesomeIcons.apple, size: 50, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
