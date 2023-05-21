import 'package:aureus/styles/app_color_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ToggleOptionWithText extends StatelessWidget {
  final String labelName;
  final bool value;
  final Function(bool) onChanged;

  const ToggleOptionWithText({
    super.key,
    required this.labelName,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          labelName,
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.black54,
          ),
        ),
        FlutterSwitch(
          width: 11.5.w,
          height: 3.5.h,
          padding: 2.0,
          value: value,
          activeColor: AppColor.kWhite,
          inactiveColor: AppColor.kWhite,
          inactiveSwitchBorder: Border.all(
            color: AppColor.kGrey,
            width: 1,
          ),
          activeSwitchBorder: Border.all(
            color: AppColor.kGrey,
            width: 1,
          ),
          toggleColor:
              value ? AppColor.kBlack.withOpacity(0.7) : AppColor.kGrey,
          onToggle: onChanged,
        )
      ],
    );
  }
}
