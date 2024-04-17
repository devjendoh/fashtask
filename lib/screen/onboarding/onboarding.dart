import 'dart:async';
import 'dart:developer';
import 'package:fashtask/screen/auth/sign_up/sign_up.dart';
import 'package:fashtask/screen/onboarding/widget/onboarding_widget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  late Timer _timer;

  @override
  void initState() {
    // animate();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    print('Am Closed');
    super.dispose();
  }

  animate() {
    _timer = Timer.periodic(
      Duration(seconds: 4),
      (timer) {
        if (_pageController.page == 2) {
          _pageController.jumpToPage(0);
          log('To The First Page');
        } else {
          _pageController.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
          log('to next Page');
        }
      },
    );
  }

  void handleChange() {
    if (_pageController.page == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return const SignUp();
          },
        ),
      );
    } else {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          OnBoradingWidget(),
          OnBoradingWidget(),
          OnBoradingWidget()
        ],
      ),
    );
  }
}
