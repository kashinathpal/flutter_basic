import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_basic/screens/security_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 2 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecurityScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Centered Text
          Center(
            child: Text(
              'Flutter Basic',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Bottom Positioned Texts
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Offered By',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Kashinath Pal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


