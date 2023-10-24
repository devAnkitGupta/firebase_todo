import 'package:firebase_todo/view/app/theme/app_text_theme.dart';
import 'package:firebase_todo/view/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _socialMediaLinkController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  'Registration',
                  style: AppTextTheme.bodyLarge,
                ),
              ),
              inputTextField(
                controller: _nameController,
                icon: Icons.person,
                isPasswordType: false,
                text: 'Name',
                padding: getBottomPadding(),
              ),
              inputTextField(
                controller: _cityController,
                icon: Icons.location_on,
                isPasswordType: false,
                text: 'City',
                padding: getBottomPadding(),
              ),
              inputTextField(
                controller: _pincodeController,
                icon: Icons.location_city_rounded,
                isPasswordType: false,
                text: 'Pincode',
                padding: getBottomPadding(),
              ),
              inputTextField(
                controller: _socialMediaLinkController,
                icon: Icons.link,
                isPasswordType: false,
                text: 'Socail Media Link',
                padding: getBottomPadding(),
              ),
              inputTextField(
                controller: _emailController,
                icon: Icons.email,
                isPasswordType: false,
                text: 'Email',
                padding: getBottomPadding(),
              ),
              inputTextField(
                controller: _passwordController,
                icon: Icons.lock,
                isPasswordType: true,
                text: 'Password',
                padding: getBottomPadding(),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign Up'),
              )
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets getBottomPadding() {
    return EdgeInsets.only(bottom: 12.sp);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cityController.dispose();
    _pincodeController.dispose();
    _socialMediaLinkController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
