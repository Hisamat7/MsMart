import 'package:flutter/material.dart';

class UCircularContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsets? padding;
  final Border? border;
  final List<BoxShadow>? shadows;
  final double margin;

  const UCircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.child,
    this.padding,
    this.border,
    this.shadows,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: border,
        boxShadow: shadows,
      ),
      padding: padding,
      child: child,
    );
  }
}