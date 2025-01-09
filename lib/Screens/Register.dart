import 'package:eraasoft/Screens/Login.dart';
import 'package:eraasoft/Widgets/eraasoftlogo.dart';
import 'package:eraasoft/Widgets/Form_Register.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          eraasoftlogo(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 32),
                Text(
                  AppText.createAccount,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  AppText.supRegister,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 32),
                Form_Register(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     AppText.alreadyHaveAnAccount,
                      style: TextStyle(
                        color: AppColor.textBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Text(
                        AppText.login,
                        style: TextStyle(
                          color: AppColor.app,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
