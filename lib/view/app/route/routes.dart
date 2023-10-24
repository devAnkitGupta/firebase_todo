import 'package:firebase_todo/view/app/route/route_constants.dart';
import 'package:firebase_todo/view/screens/splash_screen/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => {
        RouteConstants.splash: (context) => const SplashScreen(),
      };

  // static Route<dynamic> generateRoute(RouteSettings settings){
  //   late WidgetBuilder builder;
  //   switch (settings.name){
  //   }
  // }
}
