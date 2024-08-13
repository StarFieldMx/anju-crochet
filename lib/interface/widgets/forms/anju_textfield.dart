import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

class AnjuTextField extends StatelessWidget {
  const AnjuTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.keyboardType});
  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          focusedBorder: myBorders(),
          enabledBorder: myBorders(color: AnjuColors.primaryShade100),
          errorBorder: myBorders(color: AnjuColors.secondary),
        ),
      ),
    );
  }
}

InputBorder myBorders({Color? color}) => OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: color ?? AnjuColors.primary, width: 2),
    );
