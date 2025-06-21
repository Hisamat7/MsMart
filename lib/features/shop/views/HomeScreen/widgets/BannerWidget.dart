import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  final String image;
  
  const BannerWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return    ClipRRect(borderRadius: BorderRadius.circular(20.r),child: Image.asset(image,fit: BoxFit.contain,));
  }
}