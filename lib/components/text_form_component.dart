import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormComponent extends StatefulWidget {
  final String labelName;
  final TextEditingController controller;
  final bool? isPassword;

  const TextFormComponent({
    super.key,
    required this.labelName,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<TextFormComponent> createState() => _TextFormComponentState();
}

class _TextFormComponentState extends State<TextFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelName,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.5.w),
            color: AppColor.kWhite,
            border: Border.all(
              color: AppColor.kBlack,
              width: 1,
            ),
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.isPassword ?? false,
            decoration: InputDecoration(
              hintText: widget.isPassword! ? '••••••••' : 'example@mail.com',
              hintStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.kGrey,
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.6.h),
              suffixIcon: widget.isPassword!
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility,
                        color: AppColor.kGrey,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
