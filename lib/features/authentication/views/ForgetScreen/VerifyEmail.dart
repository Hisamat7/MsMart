import 'package:flutter/material.dart';
import 'package:msmart/features/common/widgets/ForgetScreenWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: ForgetScreenWidget(textTitle: AppText.verifyMailTitle, textSubTitle: AppText.verifyMailSubTitle, forgetButtonText: AppText.done,),
    );
  }
}