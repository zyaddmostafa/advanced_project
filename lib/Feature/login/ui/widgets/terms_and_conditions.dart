import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/themes/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font11DarkBlueMedium,
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: 'and',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.font11GrayMedium,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font11DarkBlueMedium.copyWith(
              height: 1.5,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
