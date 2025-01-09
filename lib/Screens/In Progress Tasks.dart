import 'package:eraasoft/Widgets/CustomAppBar.dart';
import 'package:eraasoft/Widgets/Taskview.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class InProgressTasks extends StatelessWidget {
  const InProgressTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppText.inProgress,),
      body: Taskview(title: AppText.inProgress,buttonColor: AppColor.inProgress,),
    );
  }
}
