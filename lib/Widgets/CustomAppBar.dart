import 'package:eraasoft/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // عنوان التطبيق
  final VoidCallback? onBackPressed; // زر الرجوع
   Color backgroundColor= AppColor.white; // لون الخلفية

   CustomAppBar({
    Key? key,
    required this.title,
    this.onBackPressed,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: CircleAvatar(
        backgroundColor:AppColor.iconBackground, // استبدلها بلون مخصص لو أردت
        child: BackButton(color: AppColor.black,
          onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColor.black, // لون النص
        ),
      ),
      centerTitle: false, // توسيط العنوان
      elevation: 0, // إزالة الظل
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // ارتفاع الـ AppBar
}
