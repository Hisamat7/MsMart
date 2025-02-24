import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/home.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      }
    )
  );
}
