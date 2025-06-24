import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/CircularContainer.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class BottomAddToCard extends StatelessWidget {
  const BottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode ? AppColors.dark : AppColors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        children: [
          UCircularContainer(
            backgroundColor: AppColors.grey,
            height: 40.h,
            width: 40.w,
            child: Icon(Iconsax.minus, size: 20.sp, color: AppColors.light,),
          ),
          SizedBox(width: 10.w),
         Text("1",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(width: 10.w),
          UCircularContainer(
            backgroundColor: AppColors.dark,
            height: 40.h,
            width: 40.w,
            child: Icon(Iconsax.add, size: 20.sp, color: AppColors.light,),
          ),
         Spacer(),
          ButtonWidget(
            height: 40.h,
            width: 100.w,
            text: "Add to Cart", onPressed: (){}, color: AppColors.dark, textColor: AppColors.light,)
        ],
      ),
    );
  }
}