import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 270.h,
                      width: 270.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.125),
                        shape: BoxShape.circle,
                      ),
                    );
  }
}