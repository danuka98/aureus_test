import 'package:aureus/components/document_details_without_back.dart';
import 'package:aureus/components/text_with_edit_component.dart';
import 'package:aureus/components/user_details_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  child: Row(
                    children: [
                      Text(
                        'Your Profile',
                        style: TextStyle(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Icon(Icons.person, size: 6.w),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 3.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 24.w,
                          height: 24.w,
                          child: CircleAvatar(
                            radius: 40.w,
                            backgroundImage: const AssetImage(
                              'images/profile.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.kBrown[600],
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: AppColor.kWhite,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(0.5.w),
                              child: Icon(
                                Icons.add,
                                color: AppColor.kWhite,
                                size: 3.5.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextWithEditComponent(
                  labelName: 'Contact Info',
                  onTap: () {},
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
                  margin: EdgeInsets.symmetric(vertical: 2.w),
                  child: const Divider(
                    thickness: 0.3,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
