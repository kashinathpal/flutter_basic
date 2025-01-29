import 'package:flutter/material.dart';

class RadioWidgetsScreen extends StatefulWidget {
  const RadioWidgetsScreen({super.key});

  @override
  _RadioWidgetsScreenState createState() => _RadioWidgetsScreenState();
}

class _RadioWidgetsScreenState extends State<RadioWidgetsScreen> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio Widget Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Basic Radio Button
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            Text('Selected: $_selectedValue'),
            const SizedBox(height: 20),

            // Radio with Active Color
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  activeColor: Colors.blue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  activeColor: Colors.blue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            const SizedBox(height: 20),

            // Radio with Focus Color
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  focusColor: Colors.red,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  focusColor: Colors.red,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            const SizedBox(height: 20),

            // Radio with Hover Color
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  hoverColor: Colors.green,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  hoverColor: Colors.green,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            const SizedBox(height: 20),

            // Radio with MaterialTapTargetSize
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            const SizedBox(height: 20),

            // Radio with VisualDensity
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
            const SizedBox(height: 20),

            // Radio with Dense
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedValue,
                  // dense: true,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 1'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedValue,
                  // dense: true,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const Text('Option 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
