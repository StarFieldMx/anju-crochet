import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AnjuColorCircle extends StatelessWidget {
  const AnjuColorCircle({
    super.key,
    required this.colors,
    required this.name,
  });

  final List<Color> colors;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MultiColorCircle(
          colors: colors,
        ),
        Text(
          name,
          style: AnjuTextStyles.colorsName,
        )
      ],
    );
  }
}
