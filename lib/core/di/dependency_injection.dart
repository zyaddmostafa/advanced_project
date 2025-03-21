import 'package:dio/dio.dart';
import 'package:flutter_advanced/Feature/home/data/apis/home_api_service.dart';
import 'package:flutter_advanced/Feature/home/data/repos/home_repo.dart';
import 'package:flutter_advanced/Feature/login/data/repos/login_repo.dart';
import 'package:flutter_advanced/Feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced/Feature/sign_up/data/repos/signup_repo.dart';
import 'package:flutter_advanced/Feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advanced/core/networking/api_service.dart';
import 'package:flutter_advanced/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // api service & dio
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // signup
  getIt
      .registerLazySingleton<SignupRepo>(() => SignupRepo(getIt<ApiService>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt
      .registerLazySingleton<HomeRepo>(() => HomeRepo(getIt<HomeApiService>()));
}
