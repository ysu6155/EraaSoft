import 'package:eraasoft/Screens/Home.dart';
import 'package:eraasoft/Screens/Splash.dart';
import 'package:eraasoft/Screens/TapBarScreen.dart';
import 'package:eraasoft/Themes/Themedata.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme1,
      debugShowCheckedModeBanner: false,
      // home: Splash(),
      // home: Home()
home: TapBarScreen(),
    );
  }
}
