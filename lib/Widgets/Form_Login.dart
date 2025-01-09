import 'package:eraasoft/Screens/Home.dart';
import 'package:eraasoft/Screens/TapBarScreen.dart';
import 'package:eraasoft/utils/app_Text.dart';
import 'package:flutter/material.dart';

class Form_Login extends StatefulWidget {
  Form_Login({super.key});

  @override
  State<Form_Login> createState() => _Form_LoginState();
}

class _Form_LoginState extends State<Form_Login> {
  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;

  bool isOption1Selected = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                 AppText.email,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: AppText.hintEmail,
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "الرجاء إدخال البريد الإلكتروني";
                } else if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$")
                    .hasMatch(value)) {
                  return "البريد الإلكتروني غير صحيح";
                }
                return null;
              },
            ),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppText.password,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: password,
              obscureText: !isPasswordVisible, // إخفاء كلمة المرور
              decoration: InputDecoration(
                hintText: AppText.password,
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? Icon(Icons.visibility)
                      : Icon(
                          Icons.visibility_off,
                        ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال كلمة المرور";
                } else if (value.length < 8) {
                  return "يجب أن تكون كلمة المرور 8 أحرف على الأقل";
                }
                return null;
              },
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(12)), // إلغاء الحواف
                  ),
                  backgroundColor: Color.fromRGBO(34, 67, 164, 1),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TapBarScreen(),
                      ),
                      (route) => false,
                    );
                  }
                },
                child: Text(
                 AppText.login,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
