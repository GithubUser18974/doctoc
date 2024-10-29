import 'package:doctoc/core/theming/colours.dart';
import 'package:doctoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key});
final EdgeInsetsGeometry? contentPadding;
final InputBorder ? focusedBorder;
final InputBorder ? enabledBorder;
final Textsty
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColourManager.mainBluePrimary,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColourManager.lighterGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: TextStyles.font14LightGrayRegular,
        hintText: '',
        suffixIcon:
      ),
      obscureText: false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
