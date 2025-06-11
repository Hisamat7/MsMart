import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/ForgetScreenWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class ForgetScreenTwo extends StatelessWidget {
  const ForgetScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: ForgetScreenWidget(textTitle: AppText.passwordResetTextTitle, textSubTitle: AppText.passwordResetTextSubTitle, forgetButtonText: AppText.done,),
    );
  }
}