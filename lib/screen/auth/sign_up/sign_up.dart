import 'package:fashtask/call/border_style.dart';
import 'package:fashtask/constant/app_image.dart';
import 'package:fashtask/constant/custom_text_style.dart';
import 'package:fashtask/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../widget/auth_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        height: MediaQuery.sizeOf(context).height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onboardingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SignUp',
                style: AppTextStyle.body.copyWith(
                  fontSize: 25,
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: const AuthTextfield())
            ],
          ),
        ),
      ),
    );
  }
}

class AuthTextfield extends StatelessWidget {
  const AuthTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthTextField(
          hintText: 'Email',
        ),
        SizedBox(
          height: 20,
        ),
        AuthTextField(
          hintText: 'Password',
        )
      ],
    );
  }
}
