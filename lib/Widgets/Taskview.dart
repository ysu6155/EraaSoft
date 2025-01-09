import 'package:eraasoft/Models/ChangeTaskStatus.dart';
import 'package:eraasoft/Models/tasks_data.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Taskview extends StatelessWidget {
  String title;
  Color buttonColor ;
   Taskview({super.key,required this.title,required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
      child: ListView.separated(
          itemCount: tasks[title]?.length ?? 0,
          itemBuilder: (context, index) {
            var task = tasks[title]?[index];
            return Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان والوصف
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(task!.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                            SizedBox(height: 4),
                            Text(task.description,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(task.date,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12)),
                          SizedBox(height: 4),
                          Text(task.time,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Divider(),
                  SizedBox(height: 12),
                  // الأزرار
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.white,
                          backgroundColor: buttonColor,
                          // لون الزرار بناءً على المفتاح
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          task.status,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          ChangeTaskStatus(context);
                        },
                        child: Text(
                          AppText.changeStatus,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: AppColor.app,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          }
      ),
    );
  }
}
