import 'package:flutter/material.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class ProfileLogo extends StatelessWidget {
  const ProfileLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AppImages.profile, ),
              );
  }
}