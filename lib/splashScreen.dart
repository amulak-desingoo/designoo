import 'dart:async';
import 'package:designoo/login.dart';
import 'package:designoo/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => LogIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Stack(
          children: [
            Center(
              child: Image.asset('images/logo.png',
                width: 150,
                height: 150,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text('Welcome to Designoo..',style: TextStyle(color: Colors.black87),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}