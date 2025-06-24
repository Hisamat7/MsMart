import 'package:flutter/material.dart';
import 'package:msmart/features/shop/views/Products/productDetails/widgets/CircularContainer.dart';
import 'package:msmart/features/utils/constants/colors/ColorsWidget.dart';
import 'package:msmart/features/utils/constants/colors/HelperFunction.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final bool selected;
  final Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    bool isColor = HelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.light : null),
        shape: isColor ? CircleBorder() : null,
        padding: isColor ? EdgeInsets.zero : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        avatar: isColor
            ? UCircularContainer(
                width: 50.0,
                height: 50.0,
                backgroundColor: HelperFunctions.getColor(text)!)
            : null,
        backgroundColor: isColor ? HelperFunctions.getColor(text) : null,
      ),
    );
  }
}
