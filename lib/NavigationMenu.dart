import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/shop/views/HomeScreen/HomePage.dart';
import 'package:msmart/features/shop/views/StoreScreen/views/StorePage.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class NavigationMenu extends StatelessWidget {
  final controller = Get.put(NavigationMenuController());
  
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      body: Obx(() => controller.screens[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => NavigationBar(

        backgroundColor: isDarkMode ? AppColors.dark : AppColors.light,
        surfaceTintColor: isDarkMode ? AppColors.dark : AppColors.light,
        selectedIndex: controller.currentIndex.value,
        onDestinationSelected: (index) => controller.currentIndex.value = index,
        indicatorColor: isDarkMode ? AppColors.light.withOpacity(0.1) : AppColors.dark.withOpacity(0.1),
        elevation: 0,
        destinations: [
          NavigationDestination(
            icon: Icon(Iconsax.home_1, color: isDarkMode ? AppColors.light : AppColors.dark),
            selectedIcon: Icon(Iconsax.home_1, color: isDarkMode ? AppColors.light : AppColors.primary),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.shop, color: isDarkMode ? AppColors.light : AppColors.primary),
            selectedIcon: Icon(Iconsax.shop, color: isDarkMode ? AppColors.light : AppColors.primary),
            label: 'Store',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.heart, color: isDarkMode ? AppColors.light : AppColors.dark),
            selectedIcon: Icon(Iconsax.heart, color: isDarkMode ? AppColors.light :AppColors.primary),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.user, color: isDarkMode ? AppColors.light: AppColors.dark),
            selectedIcon: Icon(Iconsax.user, color: isDarkMode ? AppColors.light: AppColors.primary),
            label: 'Profile',
          ),
        ],
      )),
    );
  }
}

class NavigationMenuController extends GetxController {
  RxInt currentIndex = 0.obs;
  
  final List<Widget> screens = [
    HomePage(),
    StorePage(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}