import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async{
  //To fix text hiding bug in flutter screen util from release mode
    await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
