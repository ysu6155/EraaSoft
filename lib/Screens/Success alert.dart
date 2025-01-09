import 'package:eraasoft/Screens/TapBarScreen.dart';
import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Success_alert extends StatelessWidget {
  const Success_alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48,horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 240,
            ),
            Image.asset(AppAssets.animationIcon,height: 140,width: 140,),
            SizedBox(height: 24),
            Text(
              AppText.taskCreatedSuccessfully,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black),
            ),
           Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TapBarScreen(),
                  ),
                ); // إغلاق المودال عند الضغط على الزر
              },
              child: Center(child: Text(AppText.home)),
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.white,
                backgroundColor: Color.fromRGBO(34, 67, 164, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(311, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
