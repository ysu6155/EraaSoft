import 'package:eraasoft/Screens/Register.dart';
import 'package:eraasoft/Widgets/eraasoftlogo.dart';
import 'package:eraasoft/Widgets/Form_Login.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

   Login({super.key,indix});

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
                SizedBox(height: 56),
                Text(
                  AppText.login,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  AppText.supLogin,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 32),
                Form_Login(),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     AppText.doNotHaveAnAccount,
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
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: Text(
                        AppText.createAccount,
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
