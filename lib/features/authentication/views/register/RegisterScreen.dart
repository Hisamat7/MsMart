import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/authentication/views/AcSuccessScreen/AccountSuccessScreen.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppText.registerScreenTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
              SizedBox(
                height: 110.h,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        validator: (p0) => p0!.isEmpty ? AppText.firstNameErrorText : null,
                        hintText: AppText.firstNameHintText,
                        icon: Iconsax.user,
                        label: AppText.firstNameLabel,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: TextFieldWidget(
                        validator: (p0) => p0!.isEmpty ? AppText.lastNameErrorText : null,
                        hintText: AppText.lastNameHintText,
                        icon:  Iconsax.user,
                        label: AppText.lastNameLabel,
                      ),
                    ),
                  ],
                ),
              ),
              
              TextFieldWidget(
                validator: (p0) => p0!.isEmpty ? AppText.emailErrorText : null,
                hintText: AppText.emailHintText,
                icon: Iconsax.direct_right,
                label: AppText.emailLabel,
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                validator: (p0) => p0!.isEmpty ? AppText.phoneErrorText : null,
                hintText: AppText.phoneHintText,
                icon: Iconsax.call,
                label: AppText.phoneLabel,
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                validator: (p0) => p0!.isEmpty ? AppText.passwordErrorText : null,
                hintText: AppText.passwordHintText,
                icon: Iconsax.password_check,
                label: AppText.passwordLabel,
                
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  RichText(
                    
                    text: TextSpan(
                    
                    text: AppText.iAgreeTo,
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: AppText.privacyPolicy,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.blue,
                        decoration: TextDecoration.underline
                        ),
                      ),
                      
                      TextSpan(
                        text: AppText.and,
                      ),
                      
                      TextSpan(
                        
                        text:  AppText.termsOfUse,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.blue,
                        decoration: TextDecoration.underline
                        ),
                      ),
                    ]
                  )
                  )
                ],
              ),
              SizedBox(height: 10.h),
              ButtonWidget(
                text: AppText.createButtonText,
                onPressed: () {
                  Get.to(()=>const AccountSuccessScreen());
                },
              ),
              SizedBox(height: 20.h),
              // Divider with "Or Sign In With" text
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
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
                      color: Colors.grey[300],
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
              border: Border.all(color: Colors.grey[300]!),
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