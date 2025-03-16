import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/constants.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/themes/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
