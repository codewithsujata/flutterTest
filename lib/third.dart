import 'package:flutter/material.dart';
import 'signup.dart';  // Import signup.dart

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(233, 176, 175, 0.8),  // Slightly lighter pink with 80% opacity
              Color.fromRGBO(249, 214, 174, 0.8),  // Slightly lighter beige with 80% opacity
            ],
          ),
        ),
        child: Column(
          children: [
            // Image section
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/friends.png'),  // Update the path to the image location
                    fit: BoxFit.contain,  // Ensure the entire image is displayed without stretching
                  ),
                ),
              ),
            ),
            // Text and Button section
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Split Bills, not\nfriendships',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'InterTight',  // Use the custom font family
                        fontSize: 34,  // Increased font size
                        fontWeight: FontWeight.bold,  // Made the text bold
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We help groups of people split expenses and bills when they are sharing costs for a particular event or activity',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'InterTight',  // Use the custom font family
                        fontSize: 18,  // Increased font size
                      ),
                    ),
                    SizedBox(height: 20),  // Add some space between the text and the button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to SignupScreen when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text('Get Started'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
