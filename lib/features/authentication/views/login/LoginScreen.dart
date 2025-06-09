import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/authentication/views/register/RegisterScreen.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/TextFieldWidget.dart';
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
      backgroundColor: Colors.white,
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
                style: TextStyle(
                
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                 AppText.loginScreenSubTitle,
                style: TextStyle(
                  
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextFieldWidget(
              hintText: "Enter the email", 
              icon: Iconsax.direct_right, 
              label: "Email",
            ),
            SizedBox(height: 20.h),
            TextFieldWidget(
              hintText: "enter the password", 
              icon: Iconsax.password_check, 
              label: "Password",
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value){}),
                Text("Remember me"),
                const Spacer(),
                Text(
                  "Forget Password?", 
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            ButtonWidget(
              text: "Login",  
              onPressed: (){},
            ),
            SizedBox(height: 10.h),
            ButtonWidget(
              text: "Create Account", 
              color: Colors.white, 
              textColor: const Color.fromRGBO(0, 0, 0, 1), 
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
              },
            ),
            SizedBox(height: 30.h),
            // Add the "Or Sign In With" divider
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