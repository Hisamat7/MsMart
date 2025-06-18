import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class BrandContainer extends StatelessWidget {
  final String image;
  final String brandName;
  final String ?numberOfProducts;
  const BrandContainer({super.key, required this.image, required this.brandName,  this.numberOfProducts});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      
                                      color: const Color.fromARGB(255, 200, 199, 199), // Change this to your desired color
                                      
                                    ),
                                    borderRadius: BorderRadius.circular(12.r),
                                   
                                  ),
                                  child: Row(

                                    children: [
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      ClipRRect(borderRadius: BorderRadius.circular(12.r),child: Image.asset(image, height: 50.h, width: 50.w,),),
                                      SizedBox(width: 10.w,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                          mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  brandName,
                                                  style: Theme.of(context).textTheme.headlineSmall
                                                ),
                                              ),
                                              SizedBox(width: 4.w,),
                                              Icon(
                                              Iconsax.verify,
                                                size: 15.sp,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '172 products',
                                            style: Theme.of(context).textTheme.bodySmall
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                             
  }
}