import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class SearchBarApp extends StatelessWidget {
  const SearchBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: TextFormField(
        decoration: InputDecoration(
          suffixIcon:IconButton(onPressed:(){} , icon:  Icon(Iconsax.search_normal,color: isDarkMode ? AppColors.light : AppColors.dark,)),
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          hintText: 'Search in store',
          hintStyle: TextStyle(color: isDarkMode ? AppColors.light : AppColors.dark),
        ),
      ),
      ),
    );
  }
}