import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/extentions.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(ColorManager.mainBlue),
        minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 52)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.homeScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
