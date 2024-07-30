import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/extensions.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AnjuColorCircle extends StatefulWidget {
  const AnjuColorCircle(
      {super.key, required this.colors, this.size = 80, this.onTap});
  final void Function(List<ThreadColor>)? onTap;
  final List<ThreadColor> colors;
  final double size;

  @override
  State<AnjuColorCircle> createState() => _AnjuColorCircleState();
}

class _AnjuColorCircleState extends State<AnjuColorCircle> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap == null) return;
        setState(() {
          isSelected = !isSelected;
        });
        widget.onTap!(widget.colors);
      },
      child: Column(
        children: [
          MultiColorCircle(
            size: widget.size,
            colors: widget.colors.map((e) => e.color.toColor()).toList(),
            isSelected: isSelected,
          ),
          Text(
            nameColor,
            style: AnjuTextStyles.colorsName,
          )
        ],
      ),
    );
  }

  String get nameColor {
    if (widget.colors.isEmpty) {
      return '';
    } else if (widget.colors.length == 1) {
      return widget.colors[0].name;
    } else {
      return widget.colors.map((e) => e.name[0].toUpperCase()).join();
    }
  }
}
