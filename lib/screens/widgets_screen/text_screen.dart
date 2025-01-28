import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/widgets_screen/container_screen.dart';
import 'package:flutter_basic/screens/widgets_screen/image_screen.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 75), // Extra spacing to account for fixed back button
                const Text(
                  'The Text widget is the most commonly used widget to display text.',
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Basic Text Features:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      _buildBulletText(
                          'textAlign: ', 'Align text horizontally (e.g. textAlign: TextAlign.center, left, right, center, justify).', context),
                      const SizedBox(
                        height: 8,
                      ),
                      _buildBulletText(
                          'overflow: ', 'Determines what happens when text overflows its container. (Options :TextOverflow.clip, TextOverflow.ellipsis, TextOverflow.fade, or TextOverflow.visible.)', context),
                      const SizedBox(
                        height: 8,
                      ),
                      _buildBulletText(
                          'softWrap: ', 'Whether the text should break lines or overflow horizontally. (e.g. softWrap: true,)', context),
                    const SizedBox(
                        height: 8,
                      ),
                      _buildBulletText(
                          'maxLines: ', 'Restricts the number of lines for the text. (e.g. maxLines: 2,)', context),
                     const SizedBox(
                        height: 8,
                      ),
                      _buildBulletText(
                          'textDirection: ', 'Specifies the reading direction (e.g. textDirection: TextDirection.ltr or rtl).', context),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  SizedBox(height: 35,),
                  Row(
                    children: const [
                      SizedBox(width: 15,),
                      Icon(Icons.arrow_back_ios_new, size: 20, color: Colors.black),
                      SizedBox(width: 15),
                      Text('Back', style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBulletText(
    String boldText, String regularText, BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 13, color: Colors.black87),
            children: [
              // Wrap the bold text in a TextSpan
              TextSpan(
                text: boldText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: regularText,
                style: const TextStyle(
                    fontSize: 13, color: Colors.black87, height: 1.4),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}