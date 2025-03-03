import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_advanced/core/themes/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool haslowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  final bool hasNumber;
  const PasswordValidations({
    required this.haslowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
    required this.hasNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('at least 1 Lowercase', haslowercase),
        verticalSpace(2),
        buildValidationRow('at least 1 uppercase', hasUppercase),
        verticalSpace(2),
        buildValidationRow(
            'at least 1 Special Character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('at least 1 Number', hasNumber),
        verticalSpace(2),
        buildValidationRow('at least 8 characters', hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorManager.gray,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: TextStyles.font14DarkGrayMedium.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? ColorManager.gray : ColorManager.darkBlue,
        ),
      ),
    ],
  );
}
