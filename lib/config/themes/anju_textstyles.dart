import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

abstract class AnjuTextStyles {
  static TextStyle titleScreens =
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  // DETAILS
  static TextStyle customer = TextStyle(color: AnjuColors.customerColor);
  static TextStyle date = TextStyle(color: AnjuColors.dueDate);
  static TextStyle colorsName = const TextStyle(fontSize: 13);
  static TextStyle mediumTitle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle titleAmigurumi =
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static TextStyle details = const TextStyle(fontWeight: FontWeight.bold);
  // SHOPPING

  static TextStyle available =
      TextStyle(color: Colors.grey.shade200, fontSize: 15);
  static TextStyle titleCard = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
