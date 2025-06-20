import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/Products/Products.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandCard.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class CategoryTabWidget extends StatelessWidget {
  const CategoryTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                     BrandCard(
                      showTheimage: true,
                      width: double.infinity,
                      height: 200,
                     ),
                    SectionHeadingWidget(title: AppText.youMightLike),
                    Expanded( 
                      child: GridView.count(
                        padding: EdgeInsets.zero,  
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),  
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.h,
                        crossAxisSpacing: 15.w,
                        childAspectRatio: 0.585,
                        children: List.generate(8, (index) {
                          return const Products();
                        }),
                      ),
                    )
                  ],
                ),
              );
  }
}