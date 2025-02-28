import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced/Feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/email_and_password.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/themes/styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const EmailAndPassword(),
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
                  onPressed: () {
                    validatorThenLogin(context);
                  },
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
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validatorThenLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ));
  }
}
