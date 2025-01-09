import 'package:eraasoft/Models/TaskModel.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

final Map<String, List<TaskModel>> tasks = {
  AppText.newTasks: [
    TaskModel(
        title: "API Integration",
        description: "Implement REST APIs",
        date: "Today",
        time: "10:00 AM - 11:00 AM",
        status: AppText.newTasks),
    TaskModel(
        title: "Testing Phase",
        description: "Unit testing the modules",
        date: "Tomorrow",
        time: "03:00 PM - 04:30 PM",
        status:AppText.newTasks),
    TaskModel(
        title: "Security Enhancement",
        description: "Enhance app security",
        date: "Next Month",
        time: "11:00 AM - 12:30 PM",
        status:AppText.newTasks),
    TaskModel(
        title: "Deployment",
        description: "Deploy application to server",
        date: "Last Week",
        time: "06:00 PM - 07:00 PM",
        status:AppText.newTasks),
  ],
  AppText.inProgress : [
    TaskModel(
        title: "UI Review",
        description: "Check UI consistency",
        date: "Next Week",
        time: "01:00 PM - 02:30 PM",
        status: AppText.inProgress),
    TaskModel(
        title: "Bug Fixing",
        description: "Resolve reported issues",
        date: "Today",
        time: "04:00 PM - 05:00 PM",
        status:   AppText.inProgress),
    TaskModel(
        title: "Client Presentation",
        description: "Present progress to client",
        date: "2 Days Ago",
        time: "10:30 AM - 11:30 AM",
        status:  AppText.inProgress),
    TaskModel(
        title: "Feature Update",
        description: "Develop new feature",
        date: "Next Month",
        time: "03:00 PM - 04:00 PM",
        status:   AppText.inProgress),
  ],
    AppText.completed : [
    TaskModel(
        title: "Database Setup",
        description: "Configure database schema",
        date: "Last Week",
        time: "11:00 AM - 12:00 PM",
        status:    AppText.completed),
    TaskModel(
        title: "Code Review",
        description: "Review team code",
        date: "Yesterday",
        time: "09:00 AM - 10:30 AM",
        status:    AppText.completed),
  ],
  AppText.outDated: [
    TaskModel(
        title: "Requirement Analysis",
        description: "Analyze client requirements",
        date: "Last Month",
        time: "12:00 PM - 01:30 PM",
        status:   AppText.outDated),
    TaskModel(
        title: "Documentation",
        description: "Prepare technical documentation",
        date: "Last Month",
        time: "02:00 PM - 03:30 PM",
        status:   AppText.outDated),
  ],
};
final Map<String, Color> categoryColors = {
  AppText.newTasks: AppColor.nweTask,
  AppText.inProgress: AppColor.inProgress,
  AppText.completed: AppColor.completed,
  AppText.outDated: AppColor.outDated,
};
