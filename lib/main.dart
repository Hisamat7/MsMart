import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:msmart/features/authentication/data/repostries/AuthenticationRepository.dart';
import 'package:msmart/features/authentication/views/splashScreen/SplashScreen.dart';
import 'package:msmart/features/utils/constants/textTheme/TextTheme.dart';
import 'package:msmart/firebase_options.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  ).then((value) => Get.put(AuthenticationRepository()));
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return GetMaterialApp(
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme
        );
      }
    )
  );
}
