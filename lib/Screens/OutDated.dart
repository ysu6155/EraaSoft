import 'package:eraasoft/Widgets/CustomAppBar.dart';
import 'package:eraasoft/Widgets/Taskview.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Outdated extends StatelessWidget {
  const Outdated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppText.outDated,),
      body: Taskview(title: AppText.outDated,buttonColor: AppColor.outDated,),
    );
  }
}
