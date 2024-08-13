import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

class AnjuAddButton extends StatelessWidget {
  const AnjuAddButton({super.key, required this.onTap});
  final void Function() onTap;
  // final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: AnjuColors.primary,
      child: const Text('Añadir'),
    );
  }
}
