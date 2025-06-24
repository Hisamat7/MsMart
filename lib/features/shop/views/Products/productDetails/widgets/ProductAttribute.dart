import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;
    
    return ContainerWidget(
      borderRadius: BorderRadius.circular(10.r),
      color: isDarkMode ? const Color.fromARGB(255, 120, 119, 119) : AppColors.secondary,
      padding: EdgeInsets.all(15.r),
      margin: EdgeInsets.only(bottom: 10.h), // Added margin for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Variation Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.variation,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "In Stock",
                style: textTheme.bodySmall?.copyWith(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 8.h), // Spacing between rows
          
          // Price Row
          Row(
            children: [
              Text(
                "Price: ",
                style: textTheme.bodySmall,
              ),
              Text(
                "\$699",
                style: textTheme.bodySmall?.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              Text(
                " - ",
                style: textTheme.bodySmall,
              ),
              Text(
                "\$599",
                style: textTheme.bodySmall?.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 8.h), // Spacing between rows
          
          // description
         Text("This is a product of iPhone 11 with 512 GB")
        ],
      ),
    );
  }
}