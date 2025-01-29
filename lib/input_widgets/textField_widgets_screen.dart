import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidgetsScreen extends StatelessWidget {
  const TextFieldWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Features')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Simple TextField with label
              TextField(
                decoration: const InputDecoration(labelText: 'Enter Text'),
              ),
              const SizedBox(height: 20),
        
              // TextField with text input action (Done)
              TextField(
                decoration: const InputDecoration(labelText: 'Text Input Action'),
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 20),
        
              // TextField with onChanged callback
              TextField(
                onChanged: (value) => print('Text Changed: $value'),
                decoration: const InputDecoration(labelText: 'On Changed'),
              ),
              const SizedBox(height: 20),
        
              // TextField with maxLength
              TextField(
                maxLength: 20,
                decoration: const InputDecoration(labelText: 'Max Length'),
              ),
              const SizedBox(height: 20),
        
              // TextField with obscureText (for password)
              TextField(
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 20),
        
              // TextField with custom text style and cursor color
              TextField(
                style: const TextStyle(color: Colors.blue, fontSize: 18),
                cursorColor: Colors.red,
                decoration: const InputDecoration(labelText: 'Styled Text'),
              ),
              const SizedBox(height: 20),
        
              // TextField with focusNode and border customization
              //  FocusNode focusNode = FocusNode(),
              TextField(
                //  focusNode: focusNode,
                decoration: InputDecoration(
                  labelText: 'Focus Border',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 20),
        
              // TextField with multiline input
              TextField(
                decoration: const InputDecoration(labelText: 'Multiline Input'),
                maxLines: 4,
                minLines: 1,
              ),
              const SizedBox(height: 20),
        
              // TextField with inputFormatters
              TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                decoration: const InputDecoration(labelText: 'Max 10 characters'),
              ),
              const SizedBox(height: 20),
        
              // TextField with autofocus
              TextField(
                autofocus: true,
                decoration: const InputDecoration(labelText: 'Autofocus TextField'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
