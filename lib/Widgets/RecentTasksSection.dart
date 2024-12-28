import 'package:eraasoft/Models/ChangeTaskStatus.dart';
import 'package:flutter/material.dart';

class RecentTasksSection extends StatelessWidget {
  const RecentTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return           InkWell(
      onTap: () {
      },
      child: Container(
        padding: EdgeInsets.all(16),
        height: 123 + 31 + 12,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color.fromRGBO(0, 0, 0, 0.1), // Color of the border
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Practice",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Todo Application",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "12:30 PM - 01:30 PM",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(86, 121, 221, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "New Task",
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ChangeTaskStatus(context);
                  },
                  child: Text(
                    "Change Status",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(34, 67, 164, 1),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    ;
  }
}
