import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/BrandNameWithShare.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/BrandTitleWithVerfication.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/ProductTitle.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/ProductTumbnailAndSlider.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/StockTitle.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Iconsax.heart,
                  color: isDarkMode ? AppColors.light : AppColors.dark,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductTumbailAndSlider(),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 BrandNameWithShare(),
                  SizedBox(
                    height: 10.h,
                  ),
                  ProductTitle(title: AppText.adidas),
                  SizedBox(
                    height: 10.h,
                  ),
                 StockTitle(),
                  SizedBox(
                    height: 10.h,
                  ),
                  BrandTitleWithVerfication()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
