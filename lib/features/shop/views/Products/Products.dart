import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
       final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 120.h,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$300',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        color: isDarkMode ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                IconButton(
                                  icon: const Icon(Iconsax.heart),
                                  color: isDarkMode ? Colors.white : Colors.black,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),

                          Image.asset(
                            height: 70.h,
                            width: 70.w,
                            AppImages.iphone,
                          
                          ),
                        ],
                      ) ,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 254, 255),
                        borderRadius: BorderRadius.circular(12.r),
                        
                      ),
                    ),
                     Text(
                      'Iphone 14 Pro Max',)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 247, 251),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              );
  }
}