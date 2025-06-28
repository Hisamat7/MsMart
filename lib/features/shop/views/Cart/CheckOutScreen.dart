import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/shop/views/Cart/PaymentSuccessScreen.dart';
import 'package:msmart/features/shop/views/Cart/Widget/CartContainer.dart';
import 'package:msmart/features/shop/views/Cart/Widget/PaymentCardContainer.dart';
import 'package:msmart/features/shop/views/Cart/Widget/PromoCodeContainer.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Review',style: Theme.of(context).textTheme.headlineSmall,),
        
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,),
        child: ButtonWidget(text: "check out", onPressed: (){
      Get.to(()=>const PaymentSuccessScreen());
        }),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 130.h,
                child: ListView.separated(
                  itemBuilder: (context, index) => const CartContainer(subTitle: 'Blue Shoes of Nike', quantity: 2, title: AppText.adidas, image: AppImages.adidas, price: 400, isShowAddButton: false,),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 1,
                  ),
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
              
              // promo code container
              const PromoCodeContainer(),
              SizedBox(
                height: 20.h,
              ),
              // payment card container
              const PaymentCardContainer(),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}