import 'package:aureus/components/button_component.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomSheetWidget extends StatelessWidget {
  final String siteName;
  final String date;
  final String jobTitle;
  final String salary;
  final String location;
  final String? image;

  const BottomSheetWidget({
    super.key,
    required this.siteName,
    required this.date,
    required this.jobTitle,
    required this.salary,
    required this.location,
    this.image = 'images/slack.png',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.w)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 2.h),
                      width: 30.w,
                      height: 0.5.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 1.h, bottom: 0.5.h),
                        child: Image.asset(image!, width: 25.w, height: 25.w)),
                    Text(
                      siteName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 1.h,
                        bottom: 1.h,
                      ),
                      child: Text(
                        jobTitle,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 2.h),
                          child: Text(
                            'Job Description',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 1.h, bottom: 2.h),
                          child: Text(
                            'We are looking for a Senior Product Designer to join our team and help shape the future of Slack. Designers serve a vital role here: from creating the vision for new features to the craft and finish of every detail in the product. We appreciate designers who think deeply, speak clearly, and love collaboration and feedback. Slack is a positive, diverse, and supportive culture—if this sounds like a good fit for you, send us a nice hello, and links to your work and experience.',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black87,
                              height: 0.2.h
                            ),
                          ),
                        ),
                        Text(
                          'Requirements',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  blurRadius: 5.0,
                  spreadRadius: 20.0,
                  offset: const Offset(0, -10),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ButtonComponent(
                      labelName: 'Apply This Job',
                      onPressed: () => context.beamToNamed('/jobApply'),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(2.w),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(2.5.w),
                        child: const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      
      ],
    );
  }
}
