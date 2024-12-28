import 'package:flutter/material.dart';

void ChangeStatus(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset("assets/Images/Animation.gif"),
            SizedBox(height: 16),
            Text(
              "Task Status Changed Successfully",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق المودال عند الضغط على الزر
              },
              child: Text("Finish"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(34, 67, 164, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(311, 48),
              ),
            ),
          ],
        ),
      );
    },
  );
}
