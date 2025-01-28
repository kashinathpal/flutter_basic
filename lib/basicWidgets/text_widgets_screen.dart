import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidgetsScreen extends StatelessWidget {
  const TextWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Text Widget Features')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Basic Text
              const Text(
                '1. Basic Text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'This is a simple text widget.',
              ),
              const SizedBox(height: 20),

              // Text Alignment
              const Text(
                '2. Center-Aligned Text',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Overflow
              const Text(
                '3. Overflow Example: This is a very long text that will overflow.',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(height: 20),

              // Styled Text
              const Text(
                '4. Styled Text',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                  wordSpacing: 5.0,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // RichText
              RichText(
                text: TextSpan(
                  text: '5. Rich Text: ',
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    const TextSpan(
                      text: 'Bold ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: 'and ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'Clickable',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Text clicked!');
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // SelectableText
              const SelectableText(
                '6. Selectable Text: You can select and copy this text.',
              ),
              const SizedBox(height: 20),

              // Gradient Text
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                ).createShader(bounds),
                child: const Text(
                  '7. Gradient Text',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Custom Font
              const Text(
                '8. Custom Font (Roboto)',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),

              // Multi-line Text
              const Text(
                '9. Multi-line Text:\nThis text spans multiple lines to demonstrate how soft wrapping works in Flutter. It wraps automatically when it reaches the edge of the screen.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // OverflowBar Example
              const Text(
                '10. Overflow Handling with Ellipsis:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'This is an example of how overflow is handled. Long text will show ellipsis.',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: 20),

              // Line Height
              const Text(
                '11. Custom Line Height: Flutter text allows line height adjustment for better spacing between lines of text.',
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
  }
}
