import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:msmart/features/common/widgets/ButtonWidget.dart';
import 'package:msmart/features/shop/views/Cart/CheckOutScreen.dart';
import 'package:msmart/features/shop/views/Cart/Widget/CartContainer.dart';
import 'package:msmart/features/utils/constants/images/AppImages.dart';
import 'package:msmart/features/utils/constants/text/AppText.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: ButtonWidget(text: "check out", onPressed: (){
          Get.to(()=>const CheckOutScreen());
        }),
      ),
      appBar: AppBar(
        title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.separated(
          itemBuilder: (context, index) => const CartContainer(subTitle: 'Blue Shoes of Nike', quantity: 2, title: AppText.adidas, image: AppImages.adidas, price: 400),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ),
    );
  }
}
