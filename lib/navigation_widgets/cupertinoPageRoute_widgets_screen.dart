import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino PageRoute Example"),
      ),
      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {
            // Navigating to the SecondScreen using CupertinoPageRoute
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Second Screen"),
      ),
      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {
            // Navigating back to the HomeScreen
            Navigator.pop(context);
          },
          child: Text("Back to Home Screen"),
        ),
      ),
    );
  }
}
