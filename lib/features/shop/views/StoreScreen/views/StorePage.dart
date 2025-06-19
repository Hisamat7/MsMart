import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/Products/Products.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandCard.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandContainer.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/StoreHeader.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/TabBarWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: false,
              automaticallyImplyLeading: false,
              expandedHeight: 300.h,
              pinned: true,
              flexibleSpace: SingleChildScrollView(
                child: Column(
                  children: [
                    // Search Bar
                    StoreHeader(),
                    
                    // Section Heading
                    SectionHeadingWidget(
                      title: AppText.brands,
                      onTap: () {},
                    ),
                    // Brands Section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 70.h,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return BrandContainer(
                              image: AppImages.nike,
                              brandName: AppText.nike,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              bottom: TabBarWidget(
                tabs: [
                  Tab(text: AppText.sports),
                  Tab(text: AppText.furniture),
                  Tab(text: AppText.electronics),
                  Tab(text: AppText.clothes),
                  Tab(text: AppText.shoes)
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    const BrandCard(),
                    SectionHeadingWidget(title: AppText.popularItems),
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
              ),
              Center(child: Text(AppText.furniture)),
              Center(child: Text(AppText.electronics)),
              Center(child: Text(AppText.clothes)),
              Center(child: Text(AppText.shoes)),
            ],
          ),
        ),
      ),
    );
  }
}