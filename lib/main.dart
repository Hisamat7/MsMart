import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/authentication/views/splashScreen/SplashScreen.dart';
import 'package:msmart/features/utils/constants/textTheme/TextTheme.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home:SplashScreen(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme
        );
      }
    )
  );
}
