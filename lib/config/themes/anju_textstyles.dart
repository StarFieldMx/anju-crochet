import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

abstract class AnjuTextStyles {
  static TextStyle customer = TextStyle(color: AnjuColor.customerColor);

  static TextStyle date = TextStyle(color: AnjuColor.dueDate);
  static TextStyle titleAmigurumi =
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static TextStyle details = const TextStyle(fontWeight: FontWeight.bold);
}
