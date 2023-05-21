import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonComponent extends StatelessWidget {
  final String labelName;
  final Function() onPressed;

  const ButtonComponent({super.key, required this.labelName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.w),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColor.kOrange),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return EdgeInsets.symmetric(vertical: 3.w);
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(labelName,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
