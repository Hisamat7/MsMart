import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
                      margin: EdgeInsets.only(bottom: 10.h,),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              AppImages.nike,
                              height: 50.h,
                              width: 50.w,
                            ),
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    AppText.nike,
                                    style: Theme.of(context).textTheme.headlineSmall
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  Iconsax.verify,
                                  size: 15.sp,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            subtitle: Text("172 products", style: Theme.of(context).textTheme.bodySmall),
                          ),
                         
                          SizedBox(
                            height: 100.h, 
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Container(
                              height: 100.h,
                              width: 100.w,
                              child: Image.asset(
                    AppImages.iphone,
                    
                    fit: BoxFit.contain,
                  ),
                             
                              decoration: BoxDecoration(
                               color:isDarkMode ? Colors.grey[850] : const Color.fromARGB(255, 238, 238, 238),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      width: double.infinity,
                      height: 200.h,
                      
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    );
                 
  }
}