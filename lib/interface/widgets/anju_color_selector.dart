import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AnjuColorSelector extends StatelessWidget {
  const AnjuColorSelector({super.key, required this.onChange, this.selected});
  final void Function(Color) onChange;
  final Color? selected;
  @override
  Widget build(BuildContext context) {
    return HueRingPicker(
      pickerColor: selected ?? Colors.black,
      onColorChanged: onChange,
    );
  }
}

class ColorTypeSelector extends StatefulWidget {
  final Function(ColorType) onChange;
  const ColorTypeSelector({super.key, required this.onChange});

  @override
  ColorTypeSelectorState createState() => ColorTypeSelectorState();
}

class ColorTypeSelectorState extends State<ColorTypeSelector> {
  ColorType selectedColorType = ColorType.primary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<ColorType>(
          title: const Text('Primario'),
          selected: selectedColorType == ColorType.primary,
          value: ColorType.primary,
          activeColor: AnjuColors.primary,
          groupValue: selectedColorType,
          onChanged: (ColorType? value) {
            setState(() {
              if (value == null) return;
              selectedColorType = value;
            });
            widget.onChange(value!);
          },
        ),
        RadioListTile<ColorType>(
          activeColor: AnjuColors.secondary,
          selected: selectedColorType == ColorType.secondary,
          title: const Text('Secundario'),
          value: ColorType.secondary,
          groupValue: selectedColorType,
          onChanged: (ColorType? value) {
            setState(() {
              if (value == null) return;
              selectedColorType = value;
            });
            widget.onChange(value!);
          },
        ),
      ],
    );
  }
}
