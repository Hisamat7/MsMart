import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/shop/controllers/HomeController.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/CircleWidget.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/PopularCategoriesWidget.dart';
import 'package:msmart/features/common/widgets/SearchBarAPP.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/PromotionBanner.dart';
import 'package:msmart/features/shop/views/Products/Products.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final controller = PageController(initialPage: 0);

    final homeController = Get.put(HomeController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header Section with Blue Background
              SizedBox(
                height: 250.h,
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
                        top: -90.h,
                        right: -170.w,
                        child: CircleWidget()
                      ),
                      Positioned(
                        top: 90.h,
                        right: -190.w,
                        child: CircleWidget()
                      ),
                      
                      // Main Content
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
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
                                      "Hisam at",
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
                            
                            SizedBox(height: 23.h),
                            
                            // Popular Categories Title
                            Text(
                              AppText.popularCategories,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            
                            SizedBox(height: 15.h),
                            
                            // Popular Categories List
                            SizedBox(
                              height: 100.h,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  PopularCategoriesWidget(image: AppImages.running, name: AppText.sports,ontap: (){},),
                                  PopularCategoriesWidget(image: AppImages.sofa, name: AppText.furniture,ontap: (){},),
                                  PopularCategoriesWidget(image: AppImages.cpu, name: AppText.electronics, ontap: () {
                                    
                                  },),
                                  PopularCategoriesWidget(image: AppImages.clothes, name: AppText.clothes,ontap: () {
                                    
                                  },),
                                  PopularCategoriesWidget(image: AppImages.sneakers, name: AppText.shoes,ontap: () {
                                    
                                  },)
                                 
                                  
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
            
              // Banner Section
            Padding(
              padding:  EdgeInsets.symmetric(
                vertical: 15.h, horizontal: 20.w
              ),
              child: PromotionBanner(controller: controller,
              image: [
                AppImages.banner,
                AppImages.banner2,
                AppImages.banner3,
                AppImages.banner4,
                AppImages.banner5
              ],
              )
            ),
              
              // Popular Items Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppText.popularItems,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: isDarkMode ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppText.viewAll,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Products Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                  childAspectRatio: 0.6, // Adjust this for better product card proportions
                  children: List.generate(8, (index) {
                    return const Products();
                  }),
                ),
              ),
              SizedBox(height: 20.h), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}