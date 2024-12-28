import 'package:eraasoft/Screens/Home.dart';
import 'package:flutter/material.dart';

class TapBarScreen extends StatefulWidget {
  const TapBarScreen({super.key});

  @override
  State<TapBarScreen> createState() => _TapBarScreenState();

}

class _TapBarScreenState extends State<TapBarScreen> with SingleTickerProviderStateMixin {
late  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this); // عدد التابات
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          TabBarView(
            controller: tabController,
            children: [
              Home(),
              Center(child: Text("Search")),
              Center(child: Text("Profile")),
            ],
          ),
          Positioned(
            bottom: 16,
            right: 0,
            left: 0,
            child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16), // الحواف
              decoration: BoxDecoration(
                color: Color.fromRGBO(221, 226, 243, 1), // لون الخلفية
                borderRadius: BorderRadius.circular(100), // الحواف الدائرية
              ),
              child: TabBar(
                controller: tabController,
                labelColor: Colors.white, // لون الأيقونات المحددة
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,

                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), // حواف المؤشر
                  color: Color.fromRGBO(34, 67, 164, 1), // لون المؤشر
                ),
                dividerHeight: 0,
                tabs: [
                  Tab(icon: Icon(Icons.home_outlined,size: 30,), ),
                  Tab(icon: Icon(Icons.add, size: 30)),
                  Tab(icon: Icon(Icons.person_outline_sharp, size: 30)),
                ],
              ),
            ),
          ),
        ],
      ),
      // التاب بار العائم



);
  }
}