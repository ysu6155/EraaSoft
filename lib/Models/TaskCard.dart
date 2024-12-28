
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
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Icon(icon),
          ),
          SizedBox(
            width: 8, // المسافة بين الأيقونة والنص
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white, // استخدام اللون الافتراضي الأبيض للنص
                ),
              ),
              Text(
                "$taskCount Task",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: tixtColor, // استخدام اللون الافتراضي للنص الفرعي
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}