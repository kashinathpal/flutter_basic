import 'package:flutter/material.dart';

class CheckBoxWidgetsScreen extends StatefulWidget {
  const CheckBoxWidgetsScreen({super.key});

  @override
  _CheckBoxWidgetsScreenState createState() => _CheckBoxWidgetsScreenState();
}

class _CheckBoxWidgetsScreenState extends State<CheckBoxWidgetsScreen> {
  bool _isChecked = false;
  bool? _isTristateChecked = null; // For tristate checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Basic Checkbox
            Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Checkbox with activeColor and checkColor
            Checkbox(
              value: _isChecked,
              activeColor: Colors.green,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Disabled Checkbox
            Checkbox(
              value: _isChecked,
              // disabledColor: Colors.grey,
              onChanged: null, // Disable the checkbox
            ),
            const SizedBox(height: 20),

            // Checkbox with focusColor
            Checkbox(
              value: _isChecked,
              focusColor: Colors.blue,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Checkbox with hoverColor
            Checkbox(
              value: _isChecked,
              hoverColor: Colors.orange,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Checkbox with materialTapTargetSize
            Checkbox(
              value: _isChecked,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Checkbox with custom shape
            Checkbox(
              value: _isChecked,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Tristate Checkbox (with third state)
            Checkbox(
              value: _isTristateChecked,
              tristate: true,
              onChanged: (bool? value) {
                setState(() {
                  _isTristateChecked = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
