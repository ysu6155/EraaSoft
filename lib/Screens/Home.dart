import 'package:eraasoft/Models/TaskCard.dart';
import 'package:eraasoft/Models/tasks_data.dart';
import 'package:eraasoft/Screens/Completed.dart';
import 'package:eraasoft/Screens/In%20Progress%20Tasks.dart';
import 'package:eraasoft/Screens/OutDated.dart';
import 'package:eraasoft/Screens/newTask.dart';
import 'package:eraasoft/utils/app_Assets.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:eraasoft/Widgets/RecentTasksSection.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eraasoft/utils/app_Text.dart';

class Home extends StatelessWidget {
   Home({super.key});
List<Widget> cards = [
  TaskCard(

    title: AppText.newTasks,
    taskCount: tasks[AppText.newTasks]?.length ,
    icon: AppAssets.iconNawTask,
    backgroundColor: AppColor.nweTask,
    iconBackgroundColor: AppColor.nweTaskLight,
    textColor: AppColor.nweTaskText,
  ),
  TaskCard(
    title: AppText.inProgress,
    taskCount: tasks[ AppText.inProgress]?.length ,
    icon: AppAssets.iconInProgress,
    backgroundColor: AppColor.inProgress,
    iconBackgroundColor: AppColor.inProgressLight,
    textColor: AppColor.inProgressText,
  ),
  TaskCard(
    title: AppText.outDated,
    taskCount: tasks[ AppText.outDated]?.length ,
    icon:AppAssets.iconOutDated,
    backgroundColor: AppColor.outDated,
    iconBackgroundColor: AppColor.outDatedLight,
    textColor:AppColor.outDatedText,
  ),
  TaskCard(
      title: AppText.completed,
      taskCount: tasks[AppText.completed]?.length ,
      icon: AppAssets.iconCompleted,
      backgroundColor: AppColor.completed,
      iconBackgroundColor:AppColor.completedLight,
      textColor: AppColor.completedText,),
];
   List<Widget> screens = [
    newTask(),
     InProgressTasks(),
     Outdated(),
     Completed()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         AppText.hello,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        Text(
                          AppText.ahmedMohamed,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColor.iconBackground,

                      child:SvgPicture.asset(AppAssets.iconAlarm)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // تعطيل التمرير داخل الشبكة
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.5,
                ),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return InkWell(child: cards[index],
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screens[index],
                      ),
                    );
                  },);
                },
              ),
              SizedBox(
                height: 24,
              ),
              Divider(color: Color.fromRGBO(0, 0, 0, 0.1)),
              SizedBox(
                height: 16,
              ),
              RecentTasksSection(),

            ],
          ),
        ),
      ),


    );
  }
}
