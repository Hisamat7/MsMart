import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';

class OnboardingScreenWidget  extends StatelessWidget {
  final VoidCallback onPressed;
  final String titleText;
  final String imagePath;
  final String subtitle;
  final String buttonText;

  const OnboardingScreenWidget ({
    super.key,
    required this.onPressed,
    required this.titleText,
    required this.imagePath,
    required this.subtitle,
    this.buttonText = "Next", // Default value
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              titleText,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.h),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60.h),
            ButtonWidget(
              text: buttonText,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}