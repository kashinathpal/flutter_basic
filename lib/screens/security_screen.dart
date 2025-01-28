import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/home_screen.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  bool isLoading = false; // Variable to track loading state

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(22),
              child: Icon(
                Icons.lock,
                size: 55,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 50,
                  height: 50,
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    cursorColor: Colors.transparent,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                      }

                      if (index == 3 && value.isNotEmpty) {
                        FocusScope.of(context).unfocus();
                      }
                    },
                    onEditingComplete: () {
                      if (controllers[index].text.length == 1 && index < 3) {
                        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                      }
                    },
                    onTap: () {
                      if (controllers[index].text.isEmpty && index > 0) {
                        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: 23),
            Text(
              'Enter your security code now for quick and\neasy access to proceed instantly!',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    String code = controllers.map((controller) => controller.text).join('');
                    if (code == '5555') {
                      setState(() {
                        isLoading = true; // Start loading
                      });
                      Future.delayed(Duration(seconds: 1), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter a valid 4-digit code')),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,),
                      width: double.infinity,  // Full width of the screen
                      height: 50,  // Fixed height for the container
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: isLoading
                          ? Center(  // Centering the progress indicator
                        child: SizedBox(
                          width: 25,  // Set width to 15
                          height: 25,  // Set height to 15
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            strokeWidth: 2.5,  // Adjust stroke width if needed
                          ),
                        ),
                      )
                          : Center(  // Centering the text when not loading
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


