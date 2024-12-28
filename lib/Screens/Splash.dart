import 'package:eraasoft/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1400), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 550,
        height: 550,
        decoration: BoxDecoration(
          color: Color.fromRGBO(244, 246, 250, 1),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(180),
            bottomLeft: Radius.circular(180),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 306),
            Image.asset(
              "assets/Images/eraasoft.png",
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}