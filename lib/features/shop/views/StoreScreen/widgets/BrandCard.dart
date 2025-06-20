import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class BrandCard extends StatelessWidget {
  final double? height;
  final double? width;
  final String? brandImage;
  final String? brandName;
  final String? productCount;
  final bool showVerificationIcon;
  final VoidCallback? onTap;
  final bool showTheimage;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const BrandCard({
    Key? key,
    this.showTheimage = false,
    this.height,
    this.width,
    this.brandImage,
    this.brandName,
    this.productCount,
    this.showVerificationIcon = true,
    this.onTap,
    this.margin,
    this.padding,
  }) : super(key: key);

  Widget imageContainer(String image) {
    return   Container(
                  child: Image.asset(
                   image
                  ),
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 193, 192, 192),
                    borderRadius: BorderRadius.circular(8.r),
                                      ),
                );
  }
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 200.w, // Default width for horizontal ListView
        height: height ?? 80.h, // Default height
        margin: margin ?? EdgeInsets.only(bottom: 10.h),
        padding: padding ?? EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20.r),
          color: isDarkMode ? Colors.grey[800] : Colors.white,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Brand Image
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: AssetImage(brandImage ?? AppImages.nike),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                // Brand Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      // Brand Name with Verification Icon
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              brandName ?? AppText.nike,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (showVerificationIcon) ...[
                            SizedBox(width: 4.w),
                            Icon(
                              Iconsax.verify,
                              size: 15.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ],
                      ),
                      SizedBox(height: 4.h),
                      // Product Count
                      Text(
                        productCount ?? "172 products",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             showTheimage ?
            Column(
              children: [
                SizedBox(height: 30.h),
                           
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   imageContainer(AppImages.iphone),
                   imageContainer(AppImages.iphone),
                   imageContainer(AppImages.iphone),
                  ],
                ),
              ],
            )
           : Container(),
          ],
        ),
        
      ),
    );
  }
}