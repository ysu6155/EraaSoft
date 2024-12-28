import 'package:eraasoft/Screens/Register.dart';
import 'package:eraasoft/Widgets/eraasoftlogo.dart';
import 'package:eraasoft/Widgets/textformfield.dart';
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
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 32),
                CustomTixtForm(),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        color: Color.fromRGBO(18, 18, 18, 1),
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
                        "Create account",
                        style: TextStyle(
                          color: Color.fromRGBO(34, 67, 164, 1),
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
