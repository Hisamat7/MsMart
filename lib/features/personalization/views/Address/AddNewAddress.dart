import 'package:flutter/material.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class AddNewAddress extends StatelessWidget {
  final String title;
  final bool isSelected;
  const AddNewAddress({super.key, required this.title,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return  ContainerWidget(
            color: isSelected ? AppColors.primary.withAlpha(70) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            padding: const EdgeInsets.all(20),
            border:isSelected ? Border.all(color:Colors.transparent) : Border.all(color:isDarkMode ? Colors.grey.shade200 : Colors.grey.shade800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(title,style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
          );
  }
}