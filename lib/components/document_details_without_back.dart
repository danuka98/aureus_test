import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DocumentDetailsWithoutBackComponent extends StatelessWidget {
  final String documentName;
  final String date;

  const DocumentDetailsWithoutBackComponent({
    super.key,
    required this.documentName,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.file_copy, size: 6.w),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 2.5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                documentName,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kBlack,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.kBlack,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
