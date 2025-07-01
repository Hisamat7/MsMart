import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:msmart/features/authentication/views/login/LoginScreen.dart';
import 'package:msmart/features/authentication/views/onBoardingScreen/OnBoardingScreenOne.dart';
class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();
  final storage = GetStorage();
  void screenRedirect(){
    storage.writeIfNull('isFirstTime', true);

    storage.read('isFirstTime') == true ? Get.to(()=> OnboardingScreenOne()) : Get.to(()=> LoginScreen());
  }
}