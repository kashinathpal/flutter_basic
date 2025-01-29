import 'package:flutter/material.dart';

class NavigatorWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Push a new route to the stack (navigating to SecondScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("Go to Second Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // Push a named route to the stack
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Go to Second Screen (Named Route)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Push a new route and replace the current one (no going back to HomeScreen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Text("Go to Third Screen (Replace Home)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Push a new route and remove all previous routes
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: Text("Go to Third Screen and Remove All Previous"),
            ),
          ],
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Pop the current route and return to the previous screen
                Navigator.pop(context);
              },
              child: Text("Back to Home Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // Push the third screen using a named route
                Navigator.pushNamed(context, '/third');
              },
              child: Text("Go to Third Screen (Named Route)"),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop the current route (back to the previous screen)
            Navigator.pop(context);
          },
          child: Text("Back to Previous Screen"),
        ),
      ),
    );
  }
}
