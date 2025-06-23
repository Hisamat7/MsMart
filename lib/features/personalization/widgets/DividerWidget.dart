import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  final double? height;
  final double? indent;
  final double? endIndent;
  final double? thickness;
  final Color? color;

  const DividerWidget({super.key, this.height, this.indent, this.endIndent, this.thickness, this.color});

  @override
  Widget build(BuildContext context) {
    return  Divider(
            height: height ?? 20.h,
            indent: indent ?? 10.w,
            endIndent: endIndent ?? 10.w,
            thickness: thickness ?? 1.h,
            color: color ?? Colors.grey.shade300,
          );
  }
}