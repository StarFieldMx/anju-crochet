import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // TODO: ADD NAVIGATION
      // onTap: ,
      leading: Icon(icon, size: 58, color: AnjuColors.primary),
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
