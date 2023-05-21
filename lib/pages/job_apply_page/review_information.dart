import 'package:aureus/components/document_details_without_back.dart';
import 'package:aureus/components/text_with_edit_component.dart';
import 'package:aureus/components/user_details_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const BeamPage reviewInformationBeamPage = BeamPage(
  key: ValueKey('reviewInformation'),
  child: ReviewInformation(),
);

class ReviewInformation extends StatelessWidget {
  const ReviewInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 3.h),
          child: TextWithEditComponent(
            labelName: 'Contact Info',
            onTap: () {},
          ),
        ),
        Center(
          child: SizedBox(
            width: 20.w,
            height: 20.w,
            child: CircleAvatar(
              radius: 40.w,
              backgroundImage: const AssetImage(
                'images/profile.jpg',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.w),
          child: const UserDetailsComponent(
            labelName: 'Full Name',
            userName: 'Adiran Severin',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.w),
          child: const UserDetailsComponent(
            labelName: 'Email',
            userName: 'adrianseverin@gmail.com',
          ),
        ),
        const UserDetailsComponent(
          labelName: 'Mobile Number',
          userName: '+6594717281',
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 1.5.w),
          child: const Divider(
            thickness: 0.2,
            color: AppColor.kGrey,
          ),
        ),
        TextWithEditComponent(
          labelName: 'Employment Information',
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.only(top: 3.w),
          child: Text(
            'Resume',
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColor.kGrey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.w),
          child: const DocumentDetailsWithoutBackComponent(
            documentName: 'My Resume.pdf',
            date: '11/06/20',
          ),
        ),
        Text(
          'Cover Letter',
          style: TextStyle(
            fontSize: 15.sp,
            color: AppColor.kGrey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.w),
          child: const DocumentDetailsWithoutBackComponent(
            documentName: 'My cover letter final.pdf',
            date: '11/06/20',
          ),
        ),
        Text(
          'Additional Skills',
          style: TextStyle(
            fontSize: 15.sp,
            color: AppColor.kGrey,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.kBlack,
            ),
            borderRadius: BorderRadius.circular(1.3.w),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.5.w, vertical: 1.w),
            child: Text(
              'Figma',
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColor.kBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
