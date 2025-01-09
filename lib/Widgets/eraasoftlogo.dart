import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class eraasoftlogo extends StatelessWidget {
  const eraasoftlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 375,
      height: 188,
      decoration: BoxDecoration(
        color: AppColor.appLight,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(180),
          bottomLeft: Radius.circular(180),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 71),
          Image.asset(
            AppAssets.eraaSoftLogo,
            height: 101,
            width: 101,
          ),
        ],
      ),
    );
  }
}
