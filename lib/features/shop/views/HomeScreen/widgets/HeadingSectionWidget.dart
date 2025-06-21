import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msmart/features/common/widgets/SearchBarApp.dart';

class HeadingSectionWidget extends StatelessWidget {
  final IconData icon;
  VoidCallback? onTap;
  final String title;
  String subtitle;

  HeadingSectionWidget({
    super.key,
    this.subtitle = "",
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            // Text(
            //   subtitle,
            //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            //         color: Colors.white,
            //       ),
            // ),
          ],
        ),
        IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: (){
            Get.to(() => const SearchBarApp());
          },
        ),
      ],
    );
  }
}
