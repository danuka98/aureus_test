import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextWithEditComponent extends StatelessWidget {
  final String labelName;
  final Function() onTap;

  const TextWithEditComponent({
    super.key,
    required this.labelName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelName,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.edit,
            size: 5.w,
          ),
        ),
      ],
    );
  }
}
