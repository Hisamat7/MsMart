
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      width: 180.w, 
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey[850] : const Color(0xFFF0F7FB),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top section with image and heart icon
          Container(
            height: 160.h,
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[800] : Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Stack(
              children: [
                // Discount badge
                Positioned(
                  top: 12.h,
                  left: 12.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(
                      '49%',
                      style: TextStyle(
                        color:AppColors.light,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Heart icon
                Positioned(
                  top: 0.h,
                  right: 0.w,
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                   
                    decoration: BoxDecoration(
                      color: AppColors.light,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.dark.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                     icon: Icon( Iconsax.heart),
                      color: AppColors.dark,
                    ),
                  ),
                ),
                // Product image
                Center(
                  child: Image.asset(
                    AppImages.iphone,
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          
          // Product details section
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        'iPhone 11 64GB',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: isDarkMode ? AppColors.light : AppColors.dark,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      
                      // Brand name with verified icon
                      Row(
                        children: [
                          Text(
                            'Apple',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.verified,
                            size: 16.sp,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      
                      // Price only
                      Text(
                        '\$399 - \$599',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? AppColors.light : AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Add button positioned at bottom-right
                Positioned(
                  bottom: 0.h,
                  right: 0.w,
                  child: Container(
                    width: 36.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      color: isDarkMode ? Colors.grey[700] : AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Add to cart functionality
                      },
                      icon: Icon(
                        Iconsax.add,
                        color: AppColors.light,
                        size: 18.sp,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}