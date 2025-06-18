import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/SearchBarApp.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/CircleWidget.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/HeadingSectionWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class StoreHeader extends StatelessWidget {
  const StoreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              SizedBox(
                height: 170.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Decorative Circles
                      Positioned(
                        top: -50.h,
                        right: -120.w,
                        child: CircleWidget(
                          height: 200.h,
                          width: 200.w,
                        )
                      ),
                      Positioned(
                        top: 50.h,
                        right: -120.w,
                        child: CircleWidget(
                          height: 200.h,
                          width: 200.w,
                        )
                      ),
                      
                      // Main Content
                     Positioned(
                      top: 40.h,
                      left: 20.w,
                      right: 20.w
                      ,
                      child: HeadingSectionWidget(title: "Store", icon: Iconsax.search_normal_1,
                      onTap: () {
                        Get.to(() => const SearchBarApp());
                      },
                      )
                     ),
                    ],
                  ),
                ),
              ),
            ],
           );
          
  }
}