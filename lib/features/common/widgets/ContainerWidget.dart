import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? margin; 
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Border? border;
  final BoxShadow? shadow; 
  final Gradient? gradient; 
  final AlignmentGeometry? alignment; 
  final BoxConstraints? constraints; 

  const ContainerWidget({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.color,
    this.margin,
    this.padding,
    this.borderRadius,
    this.border,
    this.shadow,
    this.gradient,
    this.alignment,
    this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      alignment: alignment,
      constraints: constraints,
      decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius: borderRadius,
        gradient: gradient,
        boxShadow: shadow != null ? [shadow!] : null,
      ),
      child: child, 
    );
  }
}