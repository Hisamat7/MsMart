import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class PopularCategoriesWidget extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback ontap;
  

  const PopularCategoriesWidget(
      {super.key, required this.image, required this.name, required this.ontap});

  @override
  Widget build(BuildContext context) {
     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        children: [
          InkWell(
            onTap: ontap,
            child: Container(
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: isDarkMode ? AppColors.dark : AppColors.light,
                borderRadius: BorderRadius.circular(120),
              ),
              child: Image.asset(
                image,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            name,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
