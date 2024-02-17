import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/anju_color.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AnjuColorCircle extends StatelessWidget {
  const AnjuColorCircle({
    super.key,
    required this.colors,
  });

  final List<AnjuColor> colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MultiColorCircle(
          colors: colors.map((e) => e.color).toList(),
        ),
        Text(
          nameColor,
          style: AnjuTextStyles.colorsName,
        )
      ],
    );
  }

  String get nameColor {
    if (colors.isEmpty) {
      return '';
    } else if (colors.length == 1) {
      return colors[0].name;
    } else {
      return colors.map((e) => e.name[0].toUpperCase()).join();
    }
  }
}
