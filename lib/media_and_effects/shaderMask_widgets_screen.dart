import 'package:flutter/material.dart';


class ShaderMaskDemo extends StatelessWidget {
  const ShaderMaskDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMask Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1: ShaderMask with Linear Gradient
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white, // Background color under shader
                child: const Center(
                  child: Text(
                    'Linear Gradient',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Example 2: ShaderMask with Radial Gradient
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  colors: [Colors.yellow, Colors.green],
                  radius: 0.8,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white, // Background color under shader
                child: const Center(
                  child: Text(
                    'Radial Gradient',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Example 3: ShaderMask with Image Shader
            // ShaderMask(
            //   shaderCallback: (Rect bounds) {
            //     // return const ImageShader(
            //       // AssetImage('assets/texture.jpg'), // Ensure this image exists in your assets
            //       // TileMode.repeated,
            //       // TileMode.repeated,
            //       // Matrix4.identity().scaled(0.2, 0.2).storage,
            //     // );
            //   },
            //   blendMode: BlendMode.srcIn,
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.white,
            //     child: const Center(
            //       child: Text(
            //         'Image Shader',
            //         style: TextStyle(fontSize: 20, color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 30),

            // Example 4: ShaderMask with Text Widget
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: const Text(
                'Gradient Text',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
