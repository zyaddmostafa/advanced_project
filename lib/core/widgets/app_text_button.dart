import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    this.borderRadius,
    this.verticalPadding,
    this.horizontalPadding,
    this.backgroundColor,
    this.buttonwidth,
    this.buttonheight,
    required this.buttonText,
    required this.textStyle,
  });
  final VoidCallback onPressed;
  final double? borderRadius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? backgroundColor;
  final double? buttonwidth;
  final double? buttonheight;
  final String buttonText;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorManager.mainBlue,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(
            buttonwidth?.w ?? double.maxFinite,
            buttonheight?.h ?? 50.h,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
