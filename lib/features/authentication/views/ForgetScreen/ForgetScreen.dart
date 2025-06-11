import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/authentication/views/ForgetScreen/ForgetScreenTwo.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
           Text(AppText.forgetTitle,style: TextStyle(fontSize: ThemeData().textTheme.titleMedium!.fontSize),),
            SizedBox(
              height: 10.h,
            ),
            Text(AppText.forgetSubTitle,style: TextStyle(fontSize: ThemeData().textTheme.bodySmall!.fontSize),),
            SizedBox(
              height: 20.h,
            ),
            TextFieldWidget(hintText: AppText.emailHintText, icon: Iconsax.direct_right, label: AppText.emailLabel,validator: (p0) => p0!.isEmpty ? AppText.emailErrorText : null,),
            SizedBox(
              height: 20.h,
            ),
            ButtonWidget(text: AppText.forgetButtonText, onPressed: (){
              Get.to(() => const ForgetScreenTwo());
            }),
          ],
        ),
      ),
    );
  }
}