import 'package:flutter/material.dart';
import 'dart:async';

class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  // Simulate a network request with Future.delayed
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'Data fetched successfully!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder Example'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: fetchData(),  // The Future we are waiting for
          initialData: 'Loading...',  // Initial data before the future completes
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            // Check the connection state
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While waiting for the future to complete, show a loading spinner
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              // If the future has an error, show an error message
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData) {
              // If no data was returned, show a default message
              return const Text('No data found');
            } else {
              // If the future has completed successfully, display the data
              return Text(
                'Fetched data: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            }
          },
        ),
      ),
    );
  }
}
