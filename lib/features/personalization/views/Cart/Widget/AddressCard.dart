import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(children: [
          Icon(
            Iconsax.call,
            color: AppColors.grey,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "123456789",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],),
         SizedBox(
            height: 10.h,
          ),
         Row(children: [
          Icon(
            Iconsax.location,
            color: AppColors.grey,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "address",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}
