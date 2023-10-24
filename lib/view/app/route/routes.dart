import 'package:firebase_todo/view/app/route/route_constants.dart';
import 'package:firebase_todo/view/screens/auth_screens/change_password_screen.dart';
import 'package:firebase_todo/view/screens/auth_screens/sign_in_screen.dart';
import 'package:firebase_todo/view/screens/auth_screens/sign_up_screen.dart';
import 'package:firebase_todo/view/screens/splash_screen/splash.dart';
import 'package:firebase_todo/view/screens/user_screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => {
        RouteConstants.splash: (context) => const SplashScreen(),
        RouteConstants.signIn: (context) => const SignInScreen(),
        RouteConstants.signUp: (context) => const SignUp(),
        RouteConstants.forgetPassword: (context) =>
            const ForgotPasswordScreen(),
        RouteConstants.userProfile: (context) => const UserProfileScreen(),
      };

  // static Route<dynamic> generateRoute(RouteSettings settings){
  //   late WidgetBuilder builder;
  //   switch (settings.name){
  //   }
  // }
}
