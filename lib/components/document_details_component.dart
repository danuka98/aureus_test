import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DocumentDetailsComponent extends StatelessWidget {
  final String documentName;
  final String date;
  final bool? isSelected;

  const DocumentDetailsComponent({
    super.key,
    required this.documentName,
    required this.date,
    this.isSelected = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: isSelected!
            ? AppColor.kOrange.withOpacity(0.8)
            : AppColor.kOrange.withOpacity(0.2),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
        child: Row(
          children: [
            Icon(
              Icons.file_copy,
              size: 6.w,
              color: isSelected!
                  ? AppColor.kWhite
                  : AppColor.kOrange.withOpacity(0.8),
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    documentName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: isSelected!
                          ? AppColor.kWhite
                          : AppColor.kOrange.withOpacity(0.8),
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: isSelected!
                          ? AppColor.kWhite
                          : AppColor.kOrange.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
