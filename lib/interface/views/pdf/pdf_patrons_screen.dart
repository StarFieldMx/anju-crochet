import 'package:anju/config/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra los patrones PDF existentes
class PdfPatrons extends StatelessWidget {
  const PdfPatrons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 200),
        SizedBox(
          width: 400,
          child: Hero(tag: HeroTag.logo, child: Image.asset(AnjuImages.logo)),
        )
      ],
    );
  }
}
