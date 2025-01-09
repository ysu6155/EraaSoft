import 'package:eraasoft/Models/ChangeStatus.dart';
import 'package:eraasoft/Models/TaskCard.dart';
import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';


void ChangeTaskStatus(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text(
         AppText.changeStatus,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: AppText.newTasks,
                taskCount: 12,
                icon: AppAssets.iconNawTask,
                backgroundColor: AppColor.nweTask,
                iconBackgroundColor: AppColor.nweTaskLight,
                textColor: AppColor.nweTaskText,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: AppText.inProgress,
                taskCount: 12,
                icon: AppAssets.iconInProgress,
                backgroundColor: AppColor.inProgress,
                iconBackgroundColor: AppColor.inProgressLight,
                textColor: AppColor.inProgressText,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                ChangeStatus(context);
              },
              child: TaskCard(
                title: AppText.completed,
                taskCount: 12,
                icon: AppAssets.iconCompleted,
                backgroundColor: AppColor.completed,
                iconBackgroundColor: AppColor.completedLight,
                textColor: AppColor.completedText,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: AppText.outDated,
                taskCount: 12,
                icon: AppAssets.iconOutDated,
                backgroundColor: AppColor.outDated,
                iconBackgroundColor:  AppColor.outDatedLight,
                textColor:  AppColor.outDatedText,
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      );
    },
  );
}
