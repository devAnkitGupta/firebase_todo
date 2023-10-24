import 'package:firebase_todo/view/app/route/route_constants.dart';
import 'package:firebase_todo/view/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'route/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, _) {
        return buildFlutterSplash();
      },
    );
  }

  FutureBuilder<bool> buildFlutterSplash() {
    return FutureBuilder<bool>(
      future: Future.delayed(
        const Duration(milliseconds: 1800),
        () => true,
      ),
      builder: (context, snapshot) {
        ScreenUtil.init(
          context,
          designSize: const Size(
            375,
            768,
          ),
        );
        return snapshot.data == true
            ? Stack(
                children: [
                  buildApp(),
                  // const SignInScreen(),
                ],
              )
            : const FlutterLogo();
      },
    );
  }

  Widget buildApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme(),
      routes: Routes.getAll(),
      // onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteConstants.signIn,
    );
  }
}
