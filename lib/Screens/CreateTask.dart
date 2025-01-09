import 'package:eraasoft/Screens/Success%20alert.dart';
import 'package:eraasoft/Widgets/CustomAppBar.dart';
import 'package:eraasoft/Widgets/TableCalendar.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  final VoidCallback onBackPressed;

  const CreateTask({super.key, required this.onBackPressed});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController taskName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController note = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppText.createTask,onBackPressed: widget.onBackPressed,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                AppText.taskName,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Form(
                key: formKey,
                child: TextFormField(
                  controller: taskName,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "الرجاء إدخال اسم التاسك";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText:AppText.taskName,
                    hintStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(

                AppText.noe,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              TextFormField(
                controller: note,
                decoration: InputDecoration(
                  hintText:  AppText.noe,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                textAlignVertical: TextAlignVertical.top,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                AppText.date,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Calendar(),
              SizedBox(height: 19.5),
              InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Success_alert(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColor.app,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                     AppText.createTask,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColor.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
