import 'package:flutter/material.dart';


class ThemeProvider extends InheritedWidget {
  final String themeColor;

  const ThemeProvider({Key? key, required Widget child, this.themeColor = 'Blue'})
      : super(key: key, child: child);

  // This method is used to determine if the data has changed and needs to be propagated.
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget is ThemeProvider && oldWidget.themeColor != themeColor;
  }

  // A method to easily access the theme data in the widget tree
  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }
}

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the inherited theme color using ThemeProvider.of(context)
    String themeColor = ThemeProvider.of(context)?.themeColor ?? 'Default';

    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedWidget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Theme Color: $themeColor',
              style: TextStyle(fontSize: 24, color: themeColor == 'Blue' ? Colors.blue : Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Here, you can update the theme color by rebuilding the widget tree with different data
                // In a real-world app, you would probably use something like `setState` or a state management solution
                // For simplicity, we're just toggling the theme color here.
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
