import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddDocComponent extends StatelessWidget {
  final String labelName;
  final String description;
  final Function() onPressed;

  const AddDocComponent({
    super.key,
    required this.labelName,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelName,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColor.kGrey,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.add,
            size: 8.w,
          ),
        ),
      ],
    );
  }
}
