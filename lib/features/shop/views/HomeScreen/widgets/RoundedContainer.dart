import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class RoundedContainer extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  const RoundedContainer({super.key, required this.image,required this.height ,required this.width});
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
                  height: height,
                  padding: EdgeInsets.all(10),
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image),),
                    border: Border.all(
                      color: isDarkMode ? AppColors.dark : AppColors.secondary,
                    ),
                    color: isDarkMode ? AppColors.dark : AppColors.secondary,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                );
  }
}