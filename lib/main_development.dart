import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/di/dependency_injection.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // Ensure the screen size is set before the app starts in release modee
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
