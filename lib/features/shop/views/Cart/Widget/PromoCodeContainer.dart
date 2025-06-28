import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class PromoCodeContainer extends StatelessWidget {
  const PromoCodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
            
               padding: EdgeInsets.all(8.r),
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey),
              child:Row(
                children: [
                 Flexible(child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Enter your Promo Code"
                   ),
                 )),
                
                 ButtonWidget(
                  color: AppColors.darkGrey,
                  height: 40.h,
                  width: 100.w,
                  text: "Apply", onPressed: (){}),
                ],
              ) ,);
  }
}