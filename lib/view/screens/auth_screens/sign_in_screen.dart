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
                controller: _emailController,
                icon: Icons.lock,
                isPasswordType: false,
                text: 'Password',
              ),
              const SizedBox(height: 20),
              OutlinedButton(
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
                      callback: () {},
                    ),
                    ClickableText(
                      title: 'Forget Password?',
                      callback: () {},
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
