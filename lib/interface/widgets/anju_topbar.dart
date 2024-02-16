import 'package:flutter/material.dart';
// UTILS
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/utils.dart';

class AnjuTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AnjuTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Buscar reemplazar los media query con el get_it (obtenerlo una ves y ya)
    final imageHeight = MediaQuery.of(context).size.height * 0.12;

    return AppBar(
      backgroundColor: AnjuColor.primary,
      title: Image.asset(AnjuImages.logo, height: imageHeight),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
