import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final int? taskCount;
  final String icon;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color textColor;
   const TaskCard(
      {super.key,
      required this.title,
      required this.taskCount,
      required this.icon,
      required this.backgroundColor, // اللون الافتراضي
      required this.iconBackgroundColor,
      required this.textColor ,

      });



  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      // المسافات الداخلية
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: iconBackgroundColor, // نفس متغير لون خلفية الأيقونة
            borderRadius: BorderRadius.circular(8)),
        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),
          fit: BoxFit.none,
        ), // نفس الأيقونة المستخدمة
      ),
      title: Text(
        title, // نفس عنوان العنصر
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: AppColor.white // نفس اللون الافتراضي
            ),
      ),
      subtitle: Text(
        "$taskCount ${AppText.task}", // نفس النص الفرعي
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: textColor, // نفس اللون الافتراضي للنص الفرعي
        ),
      ),
      tileColor: backgroundColor,
      // نفس لون الخلفية
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // نفس الحواف الدائرية
      ),

    );
  }
}
