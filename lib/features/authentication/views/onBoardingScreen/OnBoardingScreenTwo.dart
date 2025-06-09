import 'package:flutter/material.dart';
import 'package:msmart/features/authentication/views/login/LoginScreen.dart';
import 'package:msmart/features/common/widgets/OnBoardingScreenWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreenWidget(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
      }, titleText: AppText.onBoardingScreenTwoTitle, imagePath: AppImages.onBoardingTwo, subtitle: AppText.onBoardingScreenTwoSubTitle),
    );
  }
}