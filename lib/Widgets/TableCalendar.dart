import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime focusedDay = DateTime.now();

  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2000),
      lastDay: DateTime(2100),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay1, focusedDay1) {
        setState(() {
          selectedDay = selectedDay1;
          focusedDay = focusedDay1;
        });
      },
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(
          color: AppColor.black,
          fontSize: 22.5,
        ),
        selectedTextStyle: TextStyle(
            color: AppColor.app,
            fontWeight: FontWeight.w500,
            fontSize: 22.5),
        todayDecoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Color.fromRGBO(34, 67, 164, .12),
          shape: BoxShape.circle,
        ),
        weekendTextStyle: TextStyle(
          color: AppColor.black,
          fontSize: 22.5,
        ),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false, // إخفاء زر التنسيق
        titleCentered: true,
      ),
    );
  }
}
