import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:flutter/material.dart';

class TitleScreenWidget extends StatelessWidget {
  const TitleScreenWidget({
    super.key,
    required this.hasPadding,
    required this.title,
  });

  final bool hasPadding;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: !hasPadding ? 12.5 : 0.0),
        child: Text(title, style: AnjuTextStyles.titleScreens));
  }
}
