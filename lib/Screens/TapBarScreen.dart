import 'package:eraasoft/Models/TabItem.dart';
import 'package:eraasoft/Screens/Profile.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:eraasoft/utils/app_Assets.dart';
import 'package:flutter/material.dart';
import 'package:eraasoft/Screens/Home.dart';
import 'package:eraasoft/Screens/CreateTask.dart';
import 'package:flutter_svg/svg.dart';

class TapBarScreen extends StatefulWidget {

  @override
  State<TapBarScreen> createState() => _TapBarScreenState();
}

class _TapBarScreenState extends State<TapBarScreen> {
  int currentIndex = 0;


  final List<TabItem> tabItems = [
    TabItem(
      icon: AppAssets.iconHome,
      label: AppText.home,

    ),
    TabItem(
      icon: AppAssets.iconAddTask,
      label: AppText.addTask,

    ),
    TabItem(
      icon:  AppAssets.iconProfile,
      label: AppText.profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Home(),
      CreateTask(onBackPressed: () => setState(() => currentIndex = 0)),
      Profile(onBackPressed: () => setState(() => currentIndex = 0))
    ];
    return Scaffold(

      body: Stack(
        children: [
      screens[currentIndex],
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(

             margin: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColor.bottomNavigationBackground,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(tabItems.length, (index) {
                final tabItem = tabItems[index];
                return InkWell(
                  onTap: () => setState(() => currentIndex = index),
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: currentIndex == index ? 175 : 56,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? AppColor.app
                          :  AppColor.iconBottomNavigationBackground,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          tabItem.icon,

                          color: currentIndex == index
                              ? AppColor.white
                              : AppColor.black,
                        ),
                        if (currentIndex == index)
                          Text(
                            "  ${tabItem.label}",
                            style: TextStyle(fontSize: 14, color: AppColor.white),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),

                   ),
         ),
      ],
      ),
    );
  }
}
