import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/common/widgets/ContainerWidget.dart';
import 'package:msmart/features/shop/views/OrderScreen/widgets/OrderScreenWidget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Order',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.separated(
            itemBuilder: (context, index) => Column(
            children: [
              ContainerWidget(
                padding: const EdgeInsets.all(10),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r),
                child: Column(
                  children: [
                    OrderScreenWidget(
                      title: 'Processing',
                      subtitle: "01-01-2023",
                      icon: Iconsax.clock,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        OrderScreenWidget(
                          title: 'Order Id',
                          subtitle: "123456",
                          icon: Iconsax.copy,
                        ),
                        Spacer(),
                        OrderScreenWidget(
                          title: 'Order Date',
                          subtitle: "01-01-2023",
                          icon: Iconsax.calendar_search,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          )
        ),
      ),
    );
  }
}
