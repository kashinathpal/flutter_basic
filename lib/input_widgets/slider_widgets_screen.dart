import 'package:flutter/material.dart';

class SliderWidgetsScreen extends StatefulWidget {
  const SliderWidgetsScreen({super.key});

  @override
  _SliderWidgetsScreenState createState() => _SliderWidgetsScreenState();
}

class _SliderWidgetsScreenState extends State<SliderWidgetsScreen> {
  double _sliderValue = 50;
  double _sliderValue2 = 30;
  double _sliderValue3 = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Widget Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Basic Slider
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Value: ${_sliderValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with divisions
            Slider(
              value: _sliderValue2,
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  _sliderValue2 = value;
                });
              },
            ),
            Text('Value: ${_sliderValue2.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with label
            Slider(
              value: _sliderValue3,
              min: 0,
              max: 100,
              label: "${_sliderValue3.toStringAsFixed(0)}",
              onChanged: (double value) {
                setState(() {
                  _sliderValue3 = value;
                });
              },
            ),
            Text('Value: ${_sliderValue3.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with color customization
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              thumbColor: Colors.red,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Value: ${_sliderValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with trackHeight
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              // trackHeight: 6.0,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Value: ${_sliderValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with custom semanticFormatterCallback
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              semanticFormatterCallback: (double value) =>
              '${value.toStringAsFixed(0)}%',
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Value: ${_sliderValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            // Slider with SliderTheme customization
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                thumbColor: Colors.orange,
                trackHeight: 4.0,
              ),
              child: Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            Text('Value: ${_sliderValue.toStringAsFixed(0)}'),
          ],
        ),
      ),
    );
  }
}
