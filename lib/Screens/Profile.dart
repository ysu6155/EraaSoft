import 'package:eraasoft/utils/app_Text.dart';
import 'package:flutter/material.dart';
import 'package:eraasoft/Widgets/CustomAppBar.dart';
class Profile extends StatefulWidget {
  final VoidCallback onBackPressed;

  const Profile({super.key, required this.onBackPressed});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppText.profile,onBackPressed: widget.onBackPressed,),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12,
                  children: [
                    Text(
                      AppText.name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      controller: name,
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: AppText.ahmedMohamed,
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      AppText.email,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      controller: email,
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: AppText.hintEmail,
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlignVertical: TextAlignVertical.top,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ]),
            ),
          ),
    );
  }
}
