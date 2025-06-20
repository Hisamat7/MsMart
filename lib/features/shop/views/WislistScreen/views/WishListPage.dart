import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/Products/Products.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppText.wishlist,
        style: Theme.of(context).textTheme.headlineMedium),
      ),
      body:   Padding(
  padding: EdgeInsets.only(
    top: 25.h,
    left: 20.w,
    right: 20.w,
  ),
  child: GridView.count(
    padding: EdgeInsets.zero,  
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),  
    crossAxisCount: 2,
    mainAxisSpacing: 15.h,
    crossAxisSpacing: 15.w,
    childAspectRatio: 0.575,
    children: List.generate(8, (index) {
      return const Products();
    }),
  ),
),
    );
  }
}