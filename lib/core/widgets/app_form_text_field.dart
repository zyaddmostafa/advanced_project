import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFormTextField extends StatelessWidget {
  const AppFormTextField({
    super.key,
    required this.hintText,
    this.obscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.suffixIcon,
    this.backgroundColor,
    this.contentPadding,
    this.suffixIconColor,
    this.controller,
    required this.validator,
  });
  final String hintText;
  final bool? obscureText;
  final InputBorder? focusedBorder, enabledBorder;
  final TextStyle? hintStyle, inputTextStyle;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final Color? suffixIconColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorManager.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorManager.lighterGray,
                width: 1.3.w,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        fillColor: backgroundColor ?? ColorManager.moreLighterGray,
        filled: true,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? ColorManager.lightGray,
      ),
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkGrayMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
