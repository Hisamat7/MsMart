import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreenWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String subtitle;
  const OrderScreenWidget({Key? key, required this.title, this.icon, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
                    children: [
                     Icon(icon, color: Colors.grey.shade600,),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.green),),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(subtitle,style: Theme.of(context).textTheme.titleSmall,),
                        ],
                      ),

                    ],
                  );
  }
}