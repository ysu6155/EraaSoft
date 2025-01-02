
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final int taskCount;
  final IconData icon;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color tixtColor;


  const TaskCard({
    super.key,
    required this.title,
    required this.taskCount,
    required this.icon,
    required this.backgroundColor, // اللون الافتراضي
    required this.iconBackgroundColor,
    required this.tixtColor// اللون الافتراضي
  });


  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0), // المسافات الداخلية
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: iconBackgroundColor, // نفس متغير لون خلفية الأيقونة
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Icon(icon), // نفس الأيقونة المستخدمة
        ),
        title: Text(
          title, // نفس عنوان العنصر
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white, // نفس اللون الافتراضي
          ),
        ),
        subtitle: Text(
          "$taskCount Task", // نفس النص الفرعي
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: tixtColor, // نفس اللون الافتراضي للنص الفرعي
          ),
        ),
        tileColor: backgroundColor, // نفس لون الخلفية
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)), // نفس الحواف الدائرية
        ),
        onTap: () {
        },
      );
  }
}