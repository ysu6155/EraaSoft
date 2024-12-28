import 'package:eraasoft/Screens/Home.dart';
import 'package:flutter/material.dart';

class CustomTixtFormR extends StatefulWidget {
  CustomTixtFormR({super.key });

  @override
  State<CustomTixtFormR> createState() => _CustomTixtFormRState();
}

class _CustomTixtFormRState extends State<CustomTixtFormR> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment: Alignment.centerLeft,
                child: Text("Name",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ),)),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Ahmed Mohamed",
                hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال الاسم ";
                }
                return null;
              },
            ),
            SizedBox(
              height: 16,
            ),
            Align(alignment: Alignment.centerLeft,
                child: Text("Email",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ),)),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "example@mail.com",
                hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
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
            Align(alignment: Alignment.centerLeft,
                child: Text("Password",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ),)),
            SizedBox(
              height: 12,
            ),
            TextFormField(

              controller: password,
              obscureText: !isPasswordVisible, // إخفاء كلمة المرور
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                suffixIcon: IconButton(
                  icon:isPasswordVisible ?  Icon(Icons.visibility):Icon( Icons.visibility_off,),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)), // إلغاء الحواف
                  ),
                  backgroundColor: Color.fromRGBO(34, 67, 164, 1),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    ) ;
                  }
                },
                child: Text("Register",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
