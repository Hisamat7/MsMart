import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWidget extends StatelessWidget {
  final double height;
  final double width;
  const CircleWidget({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height:height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.125),
                        shape: BoxShape.circle,
                      ),
                    );
  }
}