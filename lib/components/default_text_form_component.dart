import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultTextFormComponent extends StatelessWidget {
  final String titleName;
  final TextEditingController controller;

  const DefaultTextFormComponent({
    super.key,
    required this.titleName,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleName,
          style: TextStyle(
            fontSize: 15.sp,
            color: AppColor.kBlack.withOpacity(0.8),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.5.w),
            color: Colors.transparent,
            border: Border.all(
              color: AppColor.kBlack,
              width: 1,
            ),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.6.h),
            ),
          ),
        ),
      ],
    );
  }
}
