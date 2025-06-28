import 'package:flutter/material.dart';

class RowPaymentCard extends StatelessWidget {
  final String title;
  final int amount;
  const RowPaymentCard({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return  Row(
                    children: [
                      Text(title,style: Theme.of(context).textTheme.bodySmall,),
                      const Spacer(),
                      Text(amount.toString(),style: Theme.of(context).textTheme.bodySmall,),
                    ],
                  );
  }
}