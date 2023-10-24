import 'package:firebase_todo/view/app/route/route_constants.dart';
import 'package:firebase_todo/view/app/theme/app_color.dart';
import 'package:firebase_todo/view/widgets/clickable_text.dart';
import 'package:firebase_todo/view/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(
            16.0.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Icon(
                Icons.edit,
                color: AppColor.black,
              ),
              const SizedBox(height: 20),
              inputTextField(
                controller: _emailController,
                icon: Icons.email,
                isPasswordType: false,
                text: 'Email',
              ),
              const SizedBox(height: 10),
              inputTextField(
                controller: _passwordController,
                icon: Icons.lock,
                isPasswordType: true,
                text: 'Password',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign In'),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClickableText(
                      title: 'Sign Up',
                      callback: () => Navigator.pushNamed(
                        context,
                        RouteConstants.signUp,
                      ),
                    ),
                    ClickableText(
                      title: 'User Profile',
                      callback: () {
                        Navigator.pushNamed(
                          context,
                          RouteConstants.userProfile,
                        );
                      },
                    ),
                    ClickableText(
                      title: 'Forgot Password?',
                      callback: () => Navigator.pushNamed(
                        context,
                        RouteConstants.forgetPassword,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
