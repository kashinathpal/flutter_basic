import 'package:flutter/material.dart';
import 'dart:async';

class StreamBuilderExample extends StatelessWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  // Simulate a stream that emits an integer every 2 seconds
  Stream<int> counterStream() {
    return Stream<int>.periodic(const Duration(seconds: 2), (x) => x).take(10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder Example'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: counterStream(),  // The stream we're listening to
          initialData: 0,  // Initial value before the stream emits data
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // When waiting for data, show a loading indicator
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              // If the stream has an error, display an error message
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData) {
              // If the stream doesn't have data yet, show a message
              return const Text('No data yet');
            } else {
              // If the stream has data, show it
              return Text(
                'Stream value: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            }
          },
        ),
      ),
    );
  }
}
