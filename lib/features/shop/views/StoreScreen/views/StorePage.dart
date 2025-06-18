import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/BrandContainer.dart';
import 'package:msmart/features/shop/views/StoreScreen/widgets/StoreHeader.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                    floating: true,
                    automaticallyImplyLeading: false,
                    expandedHeight: 300.h,
                    pinned: true,
                    flexibleSpace: Column(
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
                              }),
                          ),
                        )
                      ],

                    ),),
              ],
          body: Container()),
    );
  }
}
