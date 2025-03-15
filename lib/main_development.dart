import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/di/dependency_injection.dart';
import 'package:flutter_advanced/core/helper/constants.dart';
import 'package:flutter_advanced/core/helper/extentions.dart';
import 'package:flutter_advanced/core/helper/shared_pref_helper.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ensure the screen size is set before the app starts in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
