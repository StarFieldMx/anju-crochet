import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra los patrones PDF existentes
class PdfPatrons extends StatelessWidget {
  const PdfPatrons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Shopping screen', style: AnjuTextStyles.titleScreens),
    );
  }
}
