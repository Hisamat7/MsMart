import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class BrandContainer extends StatelessWidget {
  const BrandContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      
                                      color: const Color.fromARGB(255, 200, 199, 199), // Change this to your desired color
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColors.light,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(AppImages.nike, height: 50.h, width: 50.w,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppText.nike,
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                              
                                            )
                                          ),
                                          Text(
                                            '172 products',
                                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                              
                                            )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                             
  }
}