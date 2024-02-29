import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';

class AnjuTextField extends StatelessWidget {
  const AnjuTextField(
      {super.key, required this.controller, required this.label});
  final TextEditingController controller;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'hola',
        focusedBorder: _myBorders(),
        enabledBorder: _myBorders(color: AnjuColors.primaryShade100),
        errorBorder: _myBorders(color: AnjuColors.secondary),
      ),
    );
  }

  InputBorder _myBorders({Color? color}) => OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: color ?? AnjuColors.primary, width: 2),
      );
}
