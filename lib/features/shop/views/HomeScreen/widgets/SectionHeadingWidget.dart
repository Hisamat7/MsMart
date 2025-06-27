import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeadingWidget extends StatelessWidget {
 final String title;
 final VoidCallback? onTap;
 final bool viewAll;
final String subtitle ;
  const SectionHeadingWidget({super.key, required this.title, this.onTap,this.viewAll = true, this.subtitle = 'View All'});

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
                        subtitle,
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