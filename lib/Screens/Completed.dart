import 'package:eraasoft/Widgets/CustomAppBar.dart';
import 'package:eraasoft/Widgets/Taskview.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "${AppText.completed} ${AppText.task}",),
      body: Taskview(title: AppText.completed,buttonColor: AppColor.completed,),
    );
  }
}
