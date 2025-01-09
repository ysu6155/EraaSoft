import 'package:eraasoft/Widgets/CustomAppBar.dart';
import 'package:eraasoft/Widgets/Taskview.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class newTask extends StatelessWidget {
  const newTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppText.newTasks,),
      body: Taskview(title:AppText.newTasks,buttonColor: AppColor.nweTask,),
    );
  }
}
