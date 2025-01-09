import 'package:eraasoft/Models/ChangeTaskStatus.dart';
import 'package:eraasoft/Models/TaskModel.dart';
import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:flutter/material.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eraasoft/Models/tasks_data.dart';

class RecentTasksSection extends StatefulWidget {
  RecentTasksSection({Key? key}) : super(key: key);

  @override
  State<RecentTasksSection> createState() => _RecentTasksSectionState();
}

class _RecentTasksSectionState extends State<RecentTasksSection> {
  // البيانات في شكل Map

  List<TaskModel> filteredItems = []; // العناصر المفلترة
  String? selectedCategory; // الفئة المحددة

  @override
  void initState() {
    super.initState();
    // البدء بعرض جميع العناصر
    filteredItems = tasks.values.expand((list) => list).toList();
  }

  // تحديث العناصر بناءً على الفئة المحددة
  void filterList(String? category) {
    setState(() {
      if (category == null || category.isEmpty) {
        filteredItems = tasks.values.expand((list) => list).toList();
      } else {
        filteredItems = tasks[category] ?? [];
      }
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
             AppText.recentTasks,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.black),
            ),
            Spacer(),
            SizedBox(
              height: 40,
              width: 150,
              child: DropdownButton(
                value: selectedCategory,
                isExpanded: true,
                hint: Row(
                  children: [
                    SvgPicture.asset(AppAssets.iconFilter),
                    SizedBox(
                      width: 8,
                    ),
                    Text(AppText.filter),
                  ],
                ),
                items: tasks.keys.map((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              categoryColors[category] ?? AppColor.app,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(category),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: filterList,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: filteredItems.length,
          // استخدم filteredItems بدلاً من allTasks
          itemBuilder: (context, index) {
            final task = filteredItems[index];
            // تعيين لون الزرار بناءً على الحالة
            Color buttonColor;
            if (task.status == AppText.newTasks) {
              buttonColor = AppColor.nweTask; // لون المهام الجديدة
            } else if (task.status == AppText.inProgress) {
              buttonColor = AppColor.inProgress; // لون المهام المعلقة
            } else if (task.status == AppText.completed) {
              buttonColor = AppColor.completed; // لون المهام المكتملة
            } else {
              buttonColor = AppColor.outDated; // لون افتراضي
            }

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
                            Text(task.title,
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
                          foregroundColor: Colors.white,
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
            return SizedBox(
              height: 16,
            );
          },
        ),
      ],
    );
  }
}
