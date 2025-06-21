import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  
  const ButtonWidget({

    super.key, 
    required this.text, 
    this.textColor = Colors.white,
    this.onPressed,
    this.color = const Color.fromARGB(255, 47, 90, 163),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        
        minimumSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color,
      ),  
      child: Text(
         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
           color: textColor,
         ),
        text, 
       
      ),
    );
  }
}