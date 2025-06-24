import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class SectionHeadingWidget extends StatelessWidget {
 final String title;
 final VoidCallback? onTap;
 final bool viewAll;

  const SectionHeadingWidget({super.key, required this.title, this.onTap,this.viewAll = true});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextButton(
                      onPressed: onTap,
                      child:viewAll ? Text(
                        AppText.viewAll,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                            ),
                      ) : Container(),
                    ),
                  ],
                ),
              );
  }
}