import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

void ChangeStatus(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(AppAssets.animationIcon),
            SizedBox(height: 16),
            Text(
                AppText.taskStatusChangedSuccessfully,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق المودال عند الضغط على الزر
              },
              child: Text(AppText.finish),
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.white,
                backgroundColor: AppColor.app,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(311, 48),
              ),
            ),
          ],
        ),
      );
    },
  );
}
