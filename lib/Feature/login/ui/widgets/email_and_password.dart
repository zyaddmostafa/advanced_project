import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced/Feature/login/ui/widgets/password_validations.dart';
import 'package:flutter_advanced/core/helper/app_regex.dart';
import 'package:flutter_advanced/core/helper/spacing.dart';
import 'package:flutter_advanced/core/widgets/app_form_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obscureText = true;
  late TextEditingController passwordController;
  bool haslowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  bool hasNumber = false;
  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        haslowercase = AppRegex.isLowerCase(passwordController.text);
        hasUppercase = AppRegex.isUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.isSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.isMinLength(passwordController.text);
        hasNumber = AppRegex.isNumber(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppFormTextField(
              controller: context.read<LoginCubit>().emailController,
              hintText: 'Email',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              }),
          verticalSpace(18),
          AppFormTextField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            obscureText: obscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            haslowercase: haslowercase,
            hasUppercase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
          ),
        ],
      ),
    );
  }
}
