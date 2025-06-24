import 'package:flutter/material.dart';

class HelperFunctions {
  HelperFunctions._(); // Private constructor

  static Color? getColor(String value) {
    /// Returns a Color based on the input string value
    /// Handles common color names and returns corresponding Material Colors
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'brown':
        return Colors.brown;
      case 'teal':
        return Colors.teal;
      case 'cyan':
        return Colors.cyan;
      case 'amber':
        return Colors.amber;
      case 'indigo':
        return Colors.indigo;
      case 'lime':
        return Colors.lime;
      default:
        return null; // Return null if no match found
    }
  }

  // You can add more helper functions here as needed
}