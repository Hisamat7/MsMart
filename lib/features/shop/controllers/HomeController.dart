
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final  carouselController = CarouselSliderController();
  RxInt index = 0.obs;

  void changeBanner(int value) => index.value = value;
}