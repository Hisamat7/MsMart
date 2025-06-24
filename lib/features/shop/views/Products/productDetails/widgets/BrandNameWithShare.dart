import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class BrandNameWithShare extends StatelessWidget {
  const BrandNameWithShare({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return  Row(
                    children: [
                      // discount tag
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Text(
                          '49%',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      // price tag
                      Text(
                        '\$399 - \$599',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? AppColors.light : AppColors.dark,
                        ),
                      ),
                      Spacer(),
                      //share
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: isDarkMode ? AppColors.light : AppColors.dark,
                        ),
                      ),
                    ],
                  );
  }
}