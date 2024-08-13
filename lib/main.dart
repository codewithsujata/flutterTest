import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';  // Import the flutter_svg package
import 'second.dart';  // Import second.dart
import 'third.dart';   // Import third.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),  // Start with the SplashScreen
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(233, 176, 175, 1),
              Color.fromRGBO(249, 214, 174, 1),
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset('assets/Splithublogo.svg'), 
        ),
      ),
    );
  }
}
