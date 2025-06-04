import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let Get You Registered",
                  style: TextStyle(
                    fontSize: 20.sp,
                  
                  ),
                )),
              SizedBox(
                height: 110.h,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        hintText: "Enter the first name",
                        icon: Icons.person,
                        label: "First Name",
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: TextFieldWidget(
                        hintText: "Enter the last name",
                        icon: Icons.person,
                        label: "Last Name",
                      ),
                    ),
                  ],
                ),
              ),
              
              TextFieldWidget(
                hintText: "Enter the email",
                icon: Icons.email,
                label: "Email",
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                hintText: "Enter the phone number",
                icon: Icons.phone,
                label: "Phone Number",
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                hintText: "Enter the password",
                icon: Icons.password,
                label: "Password",
                
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                hintText: "Confirm password",
                icon: Icons.password,
                label: "Confirm Password",
               
              ),
              SizedBox(height: 30.h),
              ButtonWidget(
                text: "Create Account",
                onPressed: () {},
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
                      "Or Sign In With",
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
                  _buildSocialButton(Icons.g_mobiledata, "Google", () {}),
                  SizedBox(width: 20.w),
                  _buildSocialButton(Icons.apple, "Apple", () {}),
                  SizedBox(width: 20.w),
                  _buildSocialButton(Icons.facebook, "Facebook", () {}),
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