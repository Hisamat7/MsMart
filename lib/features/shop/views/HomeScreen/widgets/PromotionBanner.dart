import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/controllers/HomeController.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/BannerWidget.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/OnBoardingDotNavigation.dart';

class PromotionBanner extends StatelessWidget {
  final controller;
   const PromotionBanner({super.key, required this.controller,required this.image});
  final List<String> image ;
  @override
  Widget build(BuildContext context) {
    final getController = HomeController.to;
    return Column(
                children: [
                  CarouselSlider(items:
                   image.map((e) => BannerWidget(image: e,)).toList(),
                  carouselController: getController.carouselController ,

                  
                   options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, reason) => getController.changeBanner(index),
                  ),),
                  SizedBox(height: 10.h,),
                  BannerDotNavigation()
                ],
              );
  }
}