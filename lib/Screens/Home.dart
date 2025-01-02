import 'package:eraasoft/Models/ChangeTaskStatus.dart';
import 'package:eraasoft/Models/TaskCard.dart';
import 'package:eraasoft/Screens/Login.dart';
import 'package:eraasoft/Widgets/RecentTasksSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});
List<Widget> Cards = [
  TaskCard(
    title: "New Tasks",
    taskCount: 12,
    icon: Icons.account_box_outlined,
    backgroundColor: Color.fromRGBO(86, 121, 221, 1),
    iconBackgroundColor: Color.fromRGBO(
        137, 161, 231, 1),
    tixtColor: Color.fromRGBO(187, 201, 241, 1),
  ),
  TaskCard(
    title: "In Progress",
    taskCount: 12,
    icon: Icons.account_box_outlined,
    backgroundColor: Color.fromRGBO(239, 150, 69, 1),
    iconBackgroundColor: Color.fromRGBO(
        244, 181, 125, 1),
    tixtColor: Color.fromRGBO(250, 223, 199, 1),
  ),
  TaskCard(
    title: "Out Dated",
    taskCount: 12,
    icon: Icons.account_box_outlined,
    backgroundColor: Color.fromRGBO(220, 68, 129, 1),
    iconBackgroundColor: Color.fromRGBO(
        231, 124, 167, 1),
    tixtColor: Color.fromRGBO(252, 203, 226, 1),
  ),
  TaskCard(
      title: "Completed",
      taskCount: 12,
      icon: Icons.account_box_outlined,
      backgroundColor: Color.fromRGBO(100, 207, 180, 1),
      iconBackgroundColor: Color.fromRGBO(
          131, 217, 194, 1),
      tixtColor: Color.fromRGBO(210, 244, 235, 1)),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello 👋",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "Ahmed Mohamed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                  InkWell(
                    radius: 8,
                    onTap: () {},
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Icon(Icons.alarm),
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
                  childAspectRatio: 2.9,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Cards[index];
                },
              ),
              SizedBox(
                height: 24,
              ),
              Divider(color: Color.fromRGBO(0, 0, 0, 0.1)),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Recent Tasks",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                    return RecentTasksSection();
                  },
                 separatorBuilder: (context, index) {
                   return   SizedBox(
                     height: 16,
                   );
                 },
                  itemCount: 5,
              )

            ],
          ),
        ),
      ),


    );
  }
}