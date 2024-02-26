import 'package:anju/interface/layouts/anju_home_layout.dart';
import 'package:flutter/material.dart';
// UTILS
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/utils.dart';

class AnjuTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AnjuTopBar({super.key, this.actions, this.isMainRoute = false});
  final List<Widget>? actions;
  final bool isMainRoute;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // * remove color when scrolling
      surfaceTintColor: Colors.transparent,
      actions: actions ?? getActions(context),
      backgroundColor: AnjuColors.primary,
      title: Image.asset(AnjuImages.logo, height: getHeight(context)),
      centerTitle: true,
    );
  }

  double getHeight(BuildContext context) {
    // TODO: Buscar reemplazar los media query con el get_it (obtenerlo una ves y ya)
    return MediaQuery.of(context).size.height * 0.12;
  }

  /// GET ACTIONS OF MAIN ROUTES
  // TODO: NO SE ACTUALIZA CREAR UN CUBIT PARA NOTIFICAR EL CAMBIO DE INDEX MEJOR CUANDO SE CAMBIA EN LA ANIMATED BAR
  List<Widget>? getActions(BuildContext context) {
    if (!isMainRoute) return null;
    final currentRoute = AnjuRoutes.values[0];
    // TODO-WIP: Finish when design UI is completed (FIGMA)
    switch (currentRoute) {
      case AnjuRoutes.shopping:
        // TODO: Handle this case.
        return [icon];
      case AnjuRoutes.pdfpatrons:
        return null;
      case AnjuRoutes.orders:
        // TODO: Handle this case.
        return [icon];
      case AnjuRoutes.inventory:
        return null;
      case AnjuRoutes.wallet:
        return null;
    }
  }

  // TODO: CHANGE
  Widget get icon {
    return const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.add_rounded,
        color: Colors.white,
        size: 35,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
