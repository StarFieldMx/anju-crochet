import 'package:anju/config/themes/anju_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

/// For Dropdowns with same style in the app.
///
/// Example:
///
/// ```dart
/// AnjuDropDown<String>(
///   hintText: 'order', // Debe ser un String
///   items: ['awa', 'fuego']
///       .map((e) => DropdownMenuItem<String>(value: e, child: Text(e)))
///       .toList(),
///   onChange: (p0) {},
/// ),
/// ```

class AnjuDropDown<T> extends StatelessWidget {
  const AnjuDropDown({
    super.key,
    required this.hintText,
    required this.onChange,
    required this.items,
    this.value,
  });

  final String hintText;
  final void Function(T?)? onChange;
  final List<DropdownMenuItem<T>> items;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      isExpanded: true,
      value: value,

      decoration: InputDecoration(
        label: Text(hintText),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: outlined,
        enabledBorder: outlined,
        focusedBorder: outlined,
        // Add more decoration..
      ),
      hint: Text(
        hintText,
        style: const TextStyle(fontSize: 14),
      ),
      // barrierLabel: hintText,
      items: items,
      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
        return null;
      },
      onChanged: onChange,
      // Style of the button (arrow)
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      // STYLE OF ARROW DOWN [Icon]
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 24,
      ),
      // STYLE WHEN YOU TAP DROPDOWN
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }

  InputBorder get outlined {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: AnjuColors.primary,
        width: 2,
      ),
    );
  }
}
