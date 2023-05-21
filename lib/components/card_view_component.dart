import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardViewComponent extends StatelessWidget {
  final String siteName;
  final String date;
  final String jobTitle;
  final String salary;
  final String location;

  const CardViewComponent(
      {super.key,
      required this.siteName,
      required this.date,
      required this.jobTitle,
      required this.salary,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  siteName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: AppColor.kOrange,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: AppColor.kGrey,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 1.w, bottom: 4.w),
              child: Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.comment_bank,
                  color: AppColor.kGrey,
                  size: 3.w,
                ),
                SizedBox(width: 2.w),
                Text(
                  salary,
                  style: TextStyle(
                    color: AppColor.kGrey,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 2.w),
                Text(
                  location,
                  style: TextStyle(
                    color: AppColor.kGrey,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
