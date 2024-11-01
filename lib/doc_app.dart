import 'package:doctoc/core/routing/routes.dart';
import 'package:doctoc/core/theming/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

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
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColourManager.mainBluePrimary,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        ///
      ),
    );
  }
}
