import 'package:flutter/material.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
 final List<Widget> tabs ;
  TabBarWidget({required this.tabs});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Material(
      color: isDark ? AppColors.dark : AppColors.light,
      child: TabBar(
        labelColor: isDark ? AppColors.light : AppColors.primary,
        unselectedLabelColor: AppColors.grey,
        indicatorColor:isDark ? AppColors.light : AppColors.primary,
        isScrollable: true,
        tabs: tabs
       ),
    );
  }
}
