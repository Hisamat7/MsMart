import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class BrandTitleWithVerfication extends StatelessWidget {
  const BrandTitleWithVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      Image.asset(
                        AppImages.nike,
                        height: 40.h,
                        width: 40.w,
                        ),
                      SizedBox(width: 8.w),
                      Text(
                        'Apple',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          
                        )
                      ),
                      SizedBox(width: 7.w),
                      Icon(
                        Icons.verified,
                        size: 18.sp,
                        color: AppColors.primary,
                      ),
                    ],
                  );
  }
}