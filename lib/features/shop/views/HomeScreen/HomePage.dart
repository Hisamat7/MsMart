import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/CircleWidget.dart';
import 'package:msmart/features/common/widgets/PopularCategoriesWidget.dart';
import 'package:msmart/features/common/widgets/SearchBarAPP.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final List<String> banners = [
      AppImages.banner,
      AppImages.banner, 
      AppImages.banner,  
    ];


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Header Section with Blue Background
            SizedBox(
              height: 300.h,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r),
                  ),
                ),
                child: Stack(
                  children: [
                    // Decorative Circles
                    Positioned(
                      top: -130.h,
                      right: -230.w,
                      child: CircleWidget()
                    ),
                    Positioned(
                      top: 150.h,
                      right: -230.w,
                      child: CircleWidget()
                    ),
                    
                    // Main Content
                    Padding(
                      padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header Row with Trailing Icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Good Morning",
                                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    "Unknown Pro",
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              IconButton(
                               icon: const Icon(Iconsax.search_normal),
                               color: Colors.white,
                              
                               onPressed: () {
                                 Get.to(() => const SearchBarApp());
                               },
                                
                              ),
                            ],
                          ),
                          
                          SizedBox(height: 40.h),
                          
                          // Popular Categories Title
                          Text(
                            "Popular Categories",
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  
                                  color: Colors.white,
                                ),
                          ),
                          
                          SizedBox(height: 25.h),
                          
                          // Popular Categories List
                          SizedBox(
                            height: 120.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                PopularCategoriesWidget(image: AppImages.running, name: 'Sports'),
                                
                                PopularCategoriesWidget(image: AppImages.sofa, name: 'Furniture'),
                                
                                PopularCategoriesWidget(image: AppImages.cpu, name: 'Electronics'),
                               
                                PopularCategoriesWidget(image: AppImages.clothes, name: 'Clothes'),
                               
                                PopularCategoriesWidget(image: AppImages.sneakers, name: 'Shoes'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            // Featured Items Section
            
           Padding(
             padding: const EdgeInsets.only(
               top: 20,
               
             ),
             child: SizedBox(
                height: 150.h, // Adjust height as needed
                child: PageView.builder(
                  itemCount: banners.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                          image: AssetImage(banners[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
           ),
           ListTile(
             title: Text(
               'Popular Items',
               style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),
             ),
             trailing: Text(
               'See All',
               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                     color: Colors.blue,
               )),
           ),
           Expanded(child: 
           GridView.count(
            crossAxisCount: 2 ,
            children: List.generate(8, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              );
            }),
           
           )
           )
          ],
        ),
      ),
    );
  }
}