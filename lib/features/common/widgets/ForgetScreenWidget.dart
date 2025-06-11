import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:msmart/features/authentication/views/ForgetScreen/VerifyEmail.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class ForgetScreenWidget extends StatelessWidget {
  final String textTitle;
  final String textSubTitle;
  final String forgetButtonText;
  const ForgetScreenWidget({super.key, required this.textTitle, required this.textSubTitle, required this.forgetButtonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.emailScreen),
        
            SizedBox(height: 20.h,),
        
            Text(textTitle,style: Theme.of(context).textTheme.headlineMedium,),
        
            SizedBox(height: 10.h,),
        
           Text( textAlign: TextAlign.center,
            textSubTitle,style: TextStyle(fontSize: ThemeData().textTheme.bodySmall!.fontSize,),),
        
            SizedBox(height: 30.h,),
        
            ButtonWidget(text: forgetButtonText, onPressed: (){
              Get.to(() => const VerifyEmail());
            }),
        
            SizedBox(height: 10.h,),
            
            TextButton(onPressed: (){}, child:  Text(
              
              "Resend Email",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.blueAccent ),))
          ],
        ),
      );
  
  }
}