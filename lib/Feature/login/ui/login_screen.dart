import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_advanced/core/widgets/app_form_text_field.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font32BlueBold),
                verticalSpace(8),
                Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style: TextStyles.font14GrayRegular),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppFormTextField(hintText: 'Email'),
                      verticalSpace(18),
                      AppFormTextField(
                        hintText: 'Password',
                        obscureText: obscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(24),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                  onPressed: () {},
                  buttonText: 'Login',
                  textStyle: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpace(16),
                const TermsAndConditions(),
                verticalSpace(60),
                const Align(
                  alignment: Alignment.center,
                  child: AlreadyHaveAccountText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
