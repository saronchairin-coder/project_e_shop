import 'package:e_shop/Divice_Bottom_nav/Divices_Nav/divices_nav.dart';
// import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home page after 3 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DivicesNav()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo_shop.png', // your app logo
          // width: 200,
          // height: 200,
          fit: BoxFit.cover,

        ),
      ),
    );
  }
}