import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package
import 'third.dart';  // Import third.dart

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to ThirdScreen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ThirdScreen()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(233, 176, 175, 0.8), // Slightly lighter starting color
              Color.fromRGBO(249, 214, 174, 0.8), // Slightly lighter ending color
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5, // Increase height to 50% of screen height
              child: Center(
                child: Image.asset(
                  'assets/invoice.png', // Use Image.asset for PNG
                  width: MediaQuery.of(context).size.width * 0.9, // Increase width to 90% of screen width
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04, // 4% of the screen height for spacing
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Just 1 Click\nSplit Your Bill',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'InterTight', // Use the custom font family
                      fontSize: 32, // Font size for the heading
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.2, // Adjust line height to reduce spacing between lines
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Easy way to share bills with colleagues, friends and anyone',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'InterTight', // Use the custom font family
                      fontSize: 16, // Font size for the paragraph
                      color: Colors.black.withOpacity(0.6), // Light color for paragraph text
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10, // Adjust empty space to 10% of screen height
            ),
          ],
        ),
      ),
    );
  }
}
