import 'package:doctoc/core/theming/colours.dart';
import 'package:doctoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {sup,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintTextStyle,
      required this.hintText,
      this.sufficIcon,
      this.isObscureText,
      this.backgroundColor,
        this.controller, 
       required this.validator});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final Widget? sufficIcon;
  final bool? isObscureText;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColourManager.mainBluePrimary,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColourManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          errorBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedErrorBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: sufficIcon,
        fillColor: backgroundColor ?? ColourManager.moreLighterGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value){
        return validator(value);
      },
    );
  }
}
