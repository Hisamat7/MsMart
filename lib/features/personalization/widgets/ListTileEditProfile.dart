import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class ListTileEditProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData ?icon;
  final VoidCallback? onTap;

  const ListTileEditProfile({super.key, required this.title, required this.subtitle, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ListTile(
              leading: Text(title,style: Theme.of(context).textTheme.bodySmall,),
              title: Text(subtitle),
              trailing: IconButton(
                onPressed: onTap,
                icon: Icon(icon ?? Iconsax.arrow_right, color: isDarkMode ? AppColors.light : AppColors.dark,),
              ),
            );
  }
}