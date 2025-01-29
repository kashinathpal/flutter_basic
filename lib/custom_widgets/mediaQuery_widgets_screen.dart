import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Accessing media query data
    final mediaQuery = MediaQuery.of(context);

    // Extracting specific information
    final screenSize = mediaQuery.size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final orientation = mediaQuery.orientation;
    final textScaleFactor = mediaQuery.textScaleFactor;
    final platform = mediaQuery.platformBrightness;
    final padding = mediaQuery.padding;
    final devicePixelRatio = mediaQuery.devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display screen size (width and height)
            Text(
              'Screen Size: ${screenWidth.toStringAsFixed(2)} x ${screenHeight.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Display orientation (portrait or landscape)
            Text(
              'Orientation: ${orientation == Orientation.portrait ? "Portrait" : "Landscape"}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Display text scale factor
            Text(
              'Text Scale Factor: $textScaleFactor',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Display platform (light or dark mode)
            Text(
              'Platform Brightness: ${platform == Brightness.light ? "Light" : "Dark"}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Display safe area padding (status bar and bottom bar)
            Text(
              'Safe Area Padding: top ${padding.top}, bottom ${padding.bottom}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Display device pixel ratio
            Text(
              'Device Pixel Ratio: ${devicePixelRatio.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Example of responsive layout: adjust layout based on screen width
            screenWidth > 600
                ? Container(
              color: Colors.blue,
              width: screenWidth * 0.4,
              height: 200,
              child: const Center(child: Text('Large Screen Layout')),
            )
                : Container(
              color: Colors.green,
              width: screenWidth * 0.8,
              height: 150,
              child: const Center(child: Text('Small Screen Layout')),
            ),
          ],
        ),
      ),
    );
  }
}
