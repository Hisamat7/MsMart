import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/BottomAddToCard.dart';
import 'package:msmart/features/utils/constants/ChoiceChip/choice_chip.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/BrandNameWithShare.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/BrandTitleWithVerfication.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/ProductTitle.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/ProductAttribute.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/ProductTumbnailAndSlider.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/StockTitle.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';
import 'package:readmore/readmore.dart';

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
                 BrandTitleWithVerification(),
                  SizedBox(
                    height: 10.h,
                  ),
                  ProductAttribute(),
                  
                  SectionHeadingWidget(title: AppText.color, viewAll: false,),
                
                  Wrap(
                    children: [
                    UChoiceChip(text: 'red', selected: false, onSelected: (p0) {}),
                     
                      UChoiceChip(text: 'blue', selected: false, onSelected: (p0) {}),
                       UChoiceChip(text: 'orange', selected: false, onSelected: (p0) {}),
                    ],
                  ),
                
                  SectionHeadingWidget(title: AppText.size, viewAll: false,),
                
                  Wrap(
                    spacing: 10.w,
                    children: [
                    UChoiceChip(text: 'small', selected: true, onSelected: (p0) {}),
                     
                      UChoiceChip(text: 'medium', selected: false, onSelected: (p0) {}),
                       UChoiceChip(text: 'large', selected: false, onSelected: (p0) {}),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ButtonWidget(text: AppText.checkOut, onPressed: (){}),
                  SizedBox(
                    height: 10.h,
                  ),
                  SectionHeadingWidget(title: AppText.description, viewAll: false,),
                  ReadMoreText(
                    AppText.productDetailsDescription,
                    trimLines: 2,
                    colorClickableText: AppColors.primary,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAddToCard(),
    );
  }
}
