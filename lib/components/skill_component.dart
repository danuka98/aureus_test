import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SkillComponent extends StatelessWidget {
  final String skillName;

  const SkillComponent({
    super.key,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.w),
      decoration: BoxDecoration(
        color: AppColor.kOrange,
        borderRadius: BorderRadius.circular(1.3.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0.7.h,
          horizontal: 3.w,
        ),
        child: Row(
          children: [
            Icon(
              Icons.close,
              color: AppColor.kWhite,
              size: 4.w,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              skillName,
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColor.kWhite,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
