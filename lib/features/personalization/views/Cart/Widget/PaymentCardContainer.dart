import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/shop/views/HomeScreen/widgets/SectionHeadingWidget.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class PaymentCardContainer extends StatelessWidget {
  const PaymentCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  ContainerWidget(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: Colors.grey),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Sub Total',style: Theme.of(context).textTheme.bodyMedium,),
                      const Spacer(),
                      Text('400',style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text('Shipping',style: Theme.of(context).textTheme.bodySmall,),
                      const Spacer(),
                      Text('40',style: Theme.of(context).textTheme.bodySmall,),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text('Tax Fee',style: Theme.of(context).textTheme.bodySmall,),
                      const Spacer(),
                      Text('231',style: Theme.of(context).textTheme.bodySmall,),
                    ],
                  ), 
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text('Order Total',style: Theme.of(context).textTheme.headlineSmall,),
                      const Spacer(),
                      Text('4000',style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    height: 20.h,
                    color:  AppColors.darkGrey,),
                    SectionHeadingWidget(title: AppText.paymentMethod, viewAll: true,subtitle:AppText.change ,),
                    SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(AppImages.masterCard,fit: BoxFit.cover,),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("master card",style: Theme.of(context).textTheme.headlineSmall,),
                    ],

                  ),
                SizedBox(
                    height: 10.h,
                ),
                  SectionHeadingWidget(title: AppText.shippingAddress, viewAll: true,subtitle:AppText.change ,),
                ],
              )
              )
        ;
  }
}