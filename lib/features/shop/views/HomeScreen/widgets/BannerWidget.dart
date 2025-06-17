import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  final String image;
  
  const BannerWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    ClipRRect(borderRadius: BorderRadius.circular(20.r),child: Image.asset(image,fit: BoxFit.contain,));
  }
}