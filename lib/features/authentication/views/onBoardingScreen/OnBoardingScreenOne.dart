import 'package:flutter/material.dart';
import 'package:msmart/features/authentication/views/onBoardingScreen/OnBoardingScreenTwo.dart';
import 'package:msmart/features/common/widgets/OnBoardingScreenWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreenWidget(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnboardingScreenTwo()));
      }, titleText: AppText.onBoardingScreenOneTitle, imagePath: AppImages.onBoardingOne, subtitle: AppText.onBoardingScreenOneSubTitle),
    );
  }
}