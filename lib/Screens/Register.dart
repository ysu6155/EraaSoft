import 'package:eraasoft/Screens/Login.dart';
import 'package:eraasoft/Widgets/eraasoftlogo.dart';
import 'package:eraasoft/Widgets/textformfieldR.dart';
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
    "Create Account",
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    ),
    ),
    Text(
    "Create a new account for free",
    style: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    ),
    ),
    SizedBox(height: 32),
      CustomTixtFormR(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
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
                  builder: (context) => Login(),
                ),
              );
            },
            child: Text(
              "Login",
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
