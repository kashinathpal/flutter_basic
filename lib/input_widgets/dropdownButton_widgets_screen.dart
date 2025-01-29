import 'package:flutter/material.dart';


class DropDownButtonWidgetsScreen extends StatefulWidget {
  const DropDownButtonWidgetsScreen({super.key});

  @override
  _DropDownButtonWidgetsScreenState createState() => _DropDownButtonWidgetsScreenState();
}

class _DropDownButtonWidgetsScreenState extends State<DropDownButtonWidgetsScreen> {
  int _selectedValue = 1;
  List<int> _values = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropdownButton Widget Features')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Basic DropdownButton
              DropdownButton<int>(
                value: _selectedValue,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Hint
              DropdownButton<int>(
                value: _selectedValue,
                hint: const Text('Select an option'),
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Custom Icon
              DropdownButton<int>(
                value: _selectedValue,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Expanded Dropdown
              DropdownButton<int>(
                value: _selectedValue,
                isExpanded: true,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Custom Style
              DropdownButton<int>(
                value: _selectedValue,
                style: const TextStyle(color: Colors.blue, fontSize: 18),
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Custom Dropdown Color
              DropdownButton<int>(
                value: _selectedValue,
                dropdownColor: Colors.grey[200],
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Focus Color
              DropdownButton<int>(
                value: _selectedValue,
                focusColor: Colors.blue,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Elevation
              DropdownButton<int>(
                value: _selectedValue,
                elevation: 4,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Dense
              DropdownButton<int>(
                value: _selectedValue,
                isDense: true,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Custom Alignment
              DropdownButton<int>(
                value: _selectedValue,
                alignment: Alignment.center,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
        
              // Dropdown with Disabled Icon Color
              DropdownButton<int>(
                value: _selectedValue,
                iconEnabledColor: Colors.green,
                iconDisabledColor: Colors.grey,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                items: _values.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('Option $value'),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
