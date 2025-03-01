import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/Feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced/Feature/login/data/models/login_response.dart';
import 'package:flutter_advanced/Feature/login/data/repos/login_repo.dart';
import 'package:flutter_advanced/Feature/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void emitLoginState() async {
    emit(const LoginState.loading());

    final loginRequestBody = LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    );
    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (loginResponse) {
        emit(const LoginState.success(LoginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message));
      },
    );
  }
}
