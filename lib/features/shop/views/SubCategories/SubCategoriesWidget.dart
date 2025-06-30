import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class SubCategoriesWidgets extends StatelessWidget {
  const SubCategoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        color: isDarkMode ? AppColors.dark : AppColors.light,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
            children: [
             
              ContainerWidget(
            
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerWidget(
                     height: 75.h,
                      width: 75.w,
                      borderRadius: BorderRadius.circular(10.r),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          AppImages.adidas,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shoes',
                          ),
                          Row(
                            children: [
                              Text(
                                AppText.adidas,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                Iconsax.verify,
                                color: Colors.grey,
                                size: 20.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "399 - 599",
                                style: Theme.of(context).textTheme.headlineSmall,
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: isDarkMode
                                      ? Colors.grey[700]
                                      : AppColors.dark,
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
                            ],
                          ),
                        ],
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