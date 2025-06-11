import 'package:flutter/material.dart';
import 'package:msmart/features/common/widgets/SuccessScreenWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class AccountSuccessScreen extends StatelessWidget {
  const AccountSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SuccessScreenWidget(title: AppText.accountSuccessTextTitle, subTitle: AppText.accountSuccessTextSubTitle, buttonText: AppText.continues,),
);
  }
}