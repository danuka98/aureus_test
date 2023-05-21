import 'package:aureus/components/default_text_form_component.dart';
import 'package:aureus/components/skill_component.dart';
import 'package:aureus/components/toggle_option_with_text.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmploymentInformation extends StatefulWidget {
  const EmploymentInformation({super.key});

  @override
  State<EmploymentInformation> createState() => _EmploymentInformationState();
}

class _EmploymentInformationState extends State<EmploymentInformation> {
  final TextEditingController _schoolNameController = TextEditingController();
  final TextEditingController _courseOfStudyController =
      TextEditingController();
  final TextEditingController _graduatedYearController =
      TextEditingController();
  bool _isEducation = false;
  bool _isWorkExperience = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2.h),
          child: Text(
            'Education',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ToggleOptionWithText(
          labelName: 'Included in Resume',
          value: _isEducation,
          onChanged: (value) {
            setState(() {
              _isEducation = value;
            });
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.h),
          child: DefaultTextFormComponent(
            titleName: 'Name of school',
            controller: _schoolNameController,
          ),
        ),
        DefaultTextFormComponent(
          titleName: 'Course of study',
          controller: _courseOfStudyController,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.h),
          child: DefaultTextFormComponent(
            titleName: 'Year graduated',
            controller: _graduatedYearController,
          ),
        ),
        Text(
          'Work Experience',
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        ToggleOptionWithText(
          labelName: 'Included in Resume',
          value: _isWorkExperience,
          onChanged: (value) {
            setState(() {
              _isWorkExperience = value;
            });
          },
        ),
        Container(
          margin: EdgeInsets.only(top: 2.h),
          child: Text(
            'Additional Skills',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            color: Colors.transparent,
            border: Border.all(
              color: AppColor.kBlack,
              width: 1,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0.8.h,
              horizontal: 2.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColor.kGrey,
                  size: 6.w,
                ),
                const SkillComponent(
                  skillName: 'Figma',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
