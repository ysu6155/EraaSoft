import 'package:eraasoft/Models/TabItem.dart';
import 'package:flutter/material.dart';
import 'package:eraasoft/Screens/Home.dart';
import 'package:eraasoft/Screens/CreateTask.dart';

class TapBarScreen extends StatefulWidget {

  @override
  State<TapBarScreen> createState() => _TapBarScreenState();
}

class _TapBarScreenState extends State<TapBarScreen> {
  int currentIndex = 0;


  final List<TabItem> tabItems = [
    TabItem(
      icon: Icons.home_outlined,
      label: "Home",

    ),
    TabItem(
      icon: Icons.add,
      label: "Add Task",

    ),
    TabItem(
      icon: Icons.person_outline_sharp,
      label: "Profile",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Home(),
      CreateTask(onBackPressed: () => setState(() => currentIndex = 0)),
      const Center(child: Text("Profile")),
    ];
    return Scaffold(
      body: Stack(
        children: [
      screens[currentIndex],
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
             margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(221, 226, 243, 1),
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
                          ? Color.fromRGBO(34, 67, 164, 1)
                          :  Color.fromRGBO(231, 235, 247, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          tabItem.icon,
                          size: 30,
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                        if (currentIndex == index)
                          Text(
                            "  ${tabItem.label}",
                            style: TextStyle(fontSize: 14, color: Colors.white),
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
