import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class SuccessScreenWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback ?onPressed;
  final  String buttonText;
  const SuccessScreenWidget({super.key, required this.title, required this.subTitle,  this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.emailScreen),
        
            SizedBox(height: 20.h,),
        
            Text(title,style: Theme.of(context).textTheme.headlineMedium,),
        
            SizedBox(height: 10.h,),
        
           Text( textAlign: TextAlign.center,
            subTitle,style: TextStyle(fontSize: ThemeData().textTheme.bodySmall!.fontSize,),),
        
            SizedBox(height: 30.h,),
        
            ButtonWidget(text: AppText.continues, onPressed: onPressed,),
        
            SizedBox(height: 10.h,),
            
            
          ],
        ),
      );
  }
}