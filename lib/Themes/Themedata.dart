import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData Theme1 =ThemeData(
inputDecorationTheme: InputDecorationTheme(
  border: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)
),
      borderRadius: BorderRadius.circular(20)
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.app,),
    borderRadius: BorderRadius.circular(20)

),

)

);