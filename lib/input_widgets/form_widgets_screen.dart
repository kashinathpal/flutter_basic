import 'package:flutter/material.dart';

class FormWidgetsScreen extends StatefulWidget {
  const FormWidgetsScreen({super.key});

  @override
  _FormWidgetsScreenState createState() => _FormWidgetsScreenState();
}

class _FormWidgetsScreenState extends State<FormWidgetsScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  bool _acceptTerms = false;
  int? _selectedOption;
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Widget Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              // TextFormField for Name
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              const SizedBox(height: 16),

              // Checkbox for Terms and Conditions
              Row(
                children: [
                  Checkbox(
                    value: _acceptTerms,
                    onChanged: (value) {
                      setState(() {
                        _acceptTerms = value!;
                      });
                    },
                  ),
                  const Text('I accept the terms and conditions')
                ],
              ),
              const SizedBox(height: 16),

              // Radio Buttons for Selection
              Column(
                children: [
                  ListTile(
                    title: const Text('Option 1'),
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedOption = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Dropdown for Selection
              DropdownButtonFormField<int>(
                decoration: const InputDecoration(
                  labelText: 'Choose Option',
                  border: OutlineInputBorder(),
                ),
                value: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Option 2'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Switch for Boolean Selection
              SwitchListTile(
                title: const Text('Accept Terms'),
                value: _acceptTerms,
                onChanged: (value) {
                  setState(() {
                    _acceptTerms = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Slider for Numeric Value Selection
              Slider(
                value: _sliderValue,
                min: 0.0,
                max: 100.0,
                divisions: 100,
                label: _sliderValue.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Do something with the form data
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Form Submitted'),
                          content: Text('Name: $_name\nSelected Option: $_selectedOption\nSlider Value: $_sliderValue\nAccepted Terms: $_acceptTerms'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
