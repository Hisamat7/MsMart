import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:msmart/features/shop/views/AllBrands/AllBrands.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandCard.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/CategoryTabWidget.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/StoreHeader.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/TabBarWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

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
                      onTap: () {
                       Get.to(() => AllBrands());
                      },
                    ),
                    // Brands Section
             

                    SizedBox(
                      height: 70.h, 
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        itemBuilder: (context, index) {
                          return BrandCard(
                            width: 200.w,
                            height: 70.h,
                            showVerificationIcon: true,
                            onTap: () {},
                            margin:
                                EdgeInsets.only(right: index == 3 ? 16.w : 0),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 12.w),
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
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
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
