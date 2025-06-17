import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:msmart/features/shop/controllers/HomeController.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
   BannerDotNavigation({super.key,});
 

 

  @override
  Widget build(BuildContext context) {
    final getController = HomeController.to;
    return Obx(
      () => SmoothPageIndicator(
        controller: PageController(
          initialPage: getController.index.value,
          keepPage: true,
        ),
        count: 5,
        effect: ExpandingDotsEffect(
          dotHeight: 10.h,
          dotWidth: 10.w,
          activeDotColor: AppColors.primary,
          dotColor: AppColors.secondary.withOpacity(0.5),
        ),
      ),
    );
  }

}
