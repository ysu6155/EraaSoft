import 'package:eraasoft/Screens/Login.dart';
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
// home: Login(),
home: TapBarScreen(),
    );
  }
}
