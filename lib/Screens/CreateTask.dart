import 'package:flutter/material.dart';


class CreateTask extends StatefulWidget {
  final VoidCallback onBackPressed;
   const CreateTask({super.key,required this.onBackPressed });

  @override
  State<CreateTask> createState() => _CreateTaskState();

}
class _CreateTaskState extends State<CreateTask> {
  DateTime? startDate;
  DateTime? endDate;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: widget.onBackPressed),
        title: Text("Create New Task",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Text("Task Name",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
            TextFormField(
              decoration: InputDecoration(
                hintText: "task name",
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 8,),
            Text("Note",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Note",
                hintStyle: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400,),


              ),

              textAlignVertical: TextAlignVertical.top,
            ),
            SizedBox(
              height: 8,
            ),
            Text("Date",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),

          ],
        ),
      ),

    );
  }
}
