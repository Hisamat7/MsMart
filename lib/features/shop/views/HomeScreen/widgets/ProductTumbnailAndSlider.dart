import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/RoundedContainer.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class ProductTumbailAndSlider extends StatelessWidget {
  const ProductTumbailAndSlider({super.key});

  @override
  Widget build(BuildContext context) {
     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return   Stack(
              children: [
                Container(
                  color: isDarkMode ? AppColors.dark : AppColors.light,
                    height: 300.h,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(image: AssetImage(AppImages.product4),width: double.infinity,),
                  ),),
                
                Positioned(
                  left: 20,
                  right: 0,
                  bottom: 30,
                  child: SizedBox(
                    height: 80.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(width: 10,),
                      itemBuilder: (context, index) => RoundedContainer(
                      height: 70.h,
                      width: 70.w,
                      image: AppImages.product4,
                    ), itemCount: 4,
                     shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            )
        ;
  }
}