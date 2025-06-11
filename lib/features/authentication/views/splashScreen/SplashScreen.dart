import 'package:flutter/material.dart';
import 'package:msmart/features/authentication/views/onBoardingScreen/OnBoardingScreenOne.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 13 seconds before navigating to Onboarding screen
    Future.delayed(const Duration(seconds: 13), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreenOne()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check current theme brightness
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Show black logo in light mode
            if (!isDarkMode)
              Image.asset(
                AppImages.blackLogo,
                height: 150,
              ),

            // Show white logo in dark mode
            if (isDarkMode)
              Image.asset(
                AppImages.whiteLogo,
                height: 150,
              ),
          ],
        ),
      ),
    );
  }
}
