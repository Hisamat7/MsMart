import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/CircularContainer.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class CartContainer extends StatelessWidget {
  final String title;
  final String image;
  final int price;
  final String subTitle;
  final int quantity;
  const CartContainer({
    Key? key,
    required this.subTitle,
    required this.quantity,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            padding: const EdgeInsets.all(20),
            border: Border.all(color: Colors.grey.shade200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ContainerWidget(
                      height: 35.h,
                      width: 35.w,
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            subTitle,
                            style:
                                Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    UCircularContainer(
                      backgroundColor: AppColors.grey,
                      height: 30.h,
                      width: 30.w,
                      child: Icon(
                        Iconsax.minus,
                        size: 20.sp,
                        color: AppColors.light,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      quantity.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10.w),
                    UCircularContainer(
                      backgroundColor: AppColors.dark,
                      height: 30.h,
                      width: 30.w,
                      child: Icon(
                        Iconsax.add,
                        size: 20.sp,
                        color: AppColors.light,
                      ),
                    ),
                    Spacer(),
                    Text(
                      price.toString(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ],
            ),
            );
  }
}