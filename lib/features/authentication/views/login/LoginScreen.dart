import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/NavigationMenu.dart';
import 'package:msmart/features/authentication/views/ForgetScreen/ForgetScreen.dart';
import 'package:msmart/features/authentication/views/register/RegisterScreen.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
        
          children: [
            SizedBox(
              height: 110.h,
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text(
                 AppText.loginScreenTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                 AppText.loginScreenSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 20.h),
            TextFieldWidget(
              validator: (p0) => p0!.isEmpty ? AppText.emailErrorText : null,
              hintText: AppText.emailHintText, 
              icon: Iconsax.direct_right, 
              label: AppText.emailLabel,
            ),
            SizedBox(height: 20.h),
            TextFieldWidget(
              validator: (p0) => p0!.isEmpty ? AppText.passwordErrorText : null,
              hintText: AppText.passwordHintText, 
              icon: Iconsax.password_check, 
              label: AppText.passwordLabel,
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value){}),
                Text(AppText.rememberMeText),
                const Spacer(),
                TextButton(
                  onPressed: (){
                    Get.to(() => const ForgetScreen());
                  },
                  child:  Text(AppText.forgetTitle,style: TextStyle(color: AppColors.primary),),),
          
              ],
            ),
            SizedBox(height: 30.h),
            ButtonWidget(
              text: AppText.loginButtonText,  
              onPressed: (){
                Get.to(() => NavigationMenu());
              },
            ),
            SizedBox(height: 10.h),
            ButtonWidget(
              text: AppText.createButtonText, 
              color: Colors.white, 
              textColor: const Color.fromRGBO(0, 0, 0, 1), 
              onPressed: (){
               Get.to(() => const RegisterScreen());
              },
            ),
            SizedBox(height: 30.h),
            // Add the "Or Sign In With" divider
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: AppColors.subtitleColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    AppText.orSignWithText,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: AppColors.subtitleColor,
                  ),
                ),
              ],
            ),
          
            SizedBox(height: 20.h),
            // Social login buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(Icons.g_mobiledata, AppText.googleButtonText, () {}),
                SizedBox(width: 20.w),
                _buildSocialButton(Icons.apple, AppText.appleButtonText, () {}),
                SizedBox(width: 20.w),
                _buildSocialButton(Icons.facebook, AppText.facebookButtonText, () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, String label, VoidCallback onPressed) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.subtitleColor),
            ),
            child: Icon(
              icon,
              size: 30.sp,
              color: _getSocialIconColor(icon),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Color _getSocialIconColor(IconData icon) {
    switch (icon) {
      case Icons.g_mobiledata:
        return Colors.red;
      case Icons.apple:
        return Colors.black;
      case Icons.facebook:
        return Colors.blue;
      default:
        return Colors.black;
    }
  }
}