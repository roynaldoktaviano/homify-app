import 'dart:async';
import 'package:flutter/material.dart';
import 'package:homify_app/shared/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // Implement Init State
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/start-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: Center(
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('icon.png'),
            ),
          ),
        ),
      ),
    );
  }
}
