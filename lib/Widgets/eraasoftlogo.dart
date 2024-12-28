import 'package:flutter/material.dart';

class eraasoftlogo extends StatelessWidget {
  const eraasoftlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 375,
      height: 188,
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 246, 250, 1),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(180),
          bottomLeft: Radius.circular(180),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 71),
          Image.asset(
            "assets/Images/eraasoft.png",
            height: 101,
            width: 101,
          ),
        ],
      ),
    );
  }
}
