import 'package:flutter/material.dart';

class SwitchWidgetsScreen extends StatefulWidget {
  const SwitchWidgetsScreen({super.key});

  @override
  _SwitchWidgetsScreenState createState() => _SwitchWidgetsScreenState();
}

class _SwitchWidgetsScreenState extends State<SwitchWidgetsScreen> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch Widget Features')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Basic Switch
            Switch(
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with activeColor and inactiveThumbColor
            Switch(
              value: _isSwitched,
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with activeTrackColor and inactiveTrackColor
            Switch(
              value: _isSwitched,
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.red,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with focusColor
            Switch(
              value: _isSwitched,
              focusColor: Colors.yellow,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with hoverColor (for desktop/web)
            Switch(
              value: _isSwitched,
              hoverColor: Colors.orange,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with materialTapTargetSize
            Switch(
              value: _isSwitched,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch with visualDensity
            Switch(
              value: _isSwitched,
              // visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
