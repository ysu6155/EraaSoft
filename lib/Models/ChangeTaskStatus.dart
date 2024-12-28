import 'package:eraasoft/Models/TaskCard.dart';
import 'package:flutter/material.dart';

import 'ChangeStatus.dart';

void ChangeTaskStatus(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text("Change Task Status",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: "New Tasks",
                taskCount: 12,
                icon: Icons.account_box_outlined,
                backgroundColor: Color.fromRGBO(86, 121, 221, 1),
                iconBackgroundColor: Color.fromRGBO(137, 161, 231, 1),
                tixtColor: Color.fromRGBO(187, 201, 241, 1),
              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: "In Progress",
                taskCount: 12,
                icon: Icons.account_box_outlined,
                backgroundColor: Color.fromRGBO(239, 150, 69, 1),
                iconBackgroundColor: Color.fromRGBO(244, 181, 125, 1),
                tixtColor: Color.fromRGBO(250, 223, 199, 1),
              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);

                },
              child: TaskCard(
                  title: "Completed",
                  taskCount: 12,
                  icon: Icons.account_box_outlined,
                  backgroundColor: Color.fromRGBO(100, 207, 180, 1),
                  iconBackgroundColor: Color.fromRGBO(131, 217, 194, 1),
                  tixtColor: Color.fromRGBO(210, 244, 235, 1)),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                ChangeStatus(context);
              },
              child: TaskCard(
                title: "Out Dated",
                taskCount: 12,
                icon: Icons.account_box_outlined,
                backgroundColor: Color.fromRGBO(220, 68, 129, 1),
                iconBackgroundColor: Color.fromRGBO(231, 124, 167, 1),
                tixtColor: Color.fromRGBO(252, 203, 226, 1),
              ),
            ),
            SizedBox(height: 12,),
          ],
        ),
      );
    },
  );
}
