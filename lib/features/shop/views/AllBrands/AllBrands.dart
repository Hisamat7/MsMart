import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandCard.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppText.brands,style: Theme.of(context).textTheme.headlineMedium,),),
      body: Padding(padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.count(
        childAspectRatio: 1.735,
        crossAxisCount: 2,mainAxisSpacing: 15.h,crossAxisSpacing: 15.w,children: List.generate(8, (index) => const BrandCard(
        
        )),),
      ),
    );
  }
}