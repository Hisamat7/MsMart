import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/Products/Products.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.allProducts,style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: Center(
        child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: GridView.count(
                  shrinkWrap: true,
                  
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                  childAspectRatio: 0.6, // Adjust this for better product card proportions
                  children: List.generate(8, (index) {
                    return const Products();
                  }),
                ),
              ),
      ),
    );
  }
}