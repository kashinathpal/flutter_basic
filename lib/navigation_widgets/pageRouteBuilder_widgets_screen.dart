import 'package:flutter/material.dart';


class PageRouteBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageRouteBuilder Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigating to the SecondScreen using PageRouteBuilder
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => SecondScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  // Defining custom transition animation
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOut;

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(position: offsetAnimation, child: child);
                },
                transitionDuration: Duration(seconds: 1), // Duration of the transition
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigating back to the HomeScreen using a custom transition
            Navigator.pop(context);
          },
          child: Text("Back to Home Screen"),
        ),
      ),
    );
  }
}
