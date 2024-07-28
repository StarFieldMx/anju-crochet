import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

class InventoryItem extends StatelessWidget {
  const InventoryItem(
      {super.key, required this.icon, required this.text, this.onTap});
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 58, color: AnjuColors.primary),
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}

class DataItem {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  DataItem(this.icon, this.text, {this.onTap});
}
