import 'package:flutter/material.dart';

class StockTitle extends StatelessWidget {
  const StockTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                    children: [
                      Text(
                        "stock : ",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "available",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.green),
                      )
                    ],
                  );
  }
}