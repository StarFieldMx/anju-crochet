import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/servicelocator.dart';
import 'package:anju/interface/layouts/anju_home_layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// UTILS
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/utils.dart';

class AnjuTopBar extends StatefulWidget implements PreferredSizeWidget {
  const AnjuTopBar(
      {super.key, this.actions, this.isMainRoute = false, this.tabsRouter});
  final List<Widget>? actions;
  final bool isMainRoute;
  final TabsRouter? tabsRouter;
  @override
  State<AnjuTopBar> createState() => _AnjuTopBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AnjuTopBarState extends State<AnjuTopBar> {
  _AnjuTopBarState();
  int activeIndex = 0;
  @override
  void initState() {
    if (widget.isMainRoute && widget.tabsRouter != null) {
      widget.tabsRouter!.addListener(() {
        print('Current route index: ${widget.tabsRouter!.activeIndex}');
        print('Current route name: ${widget.tabsRouter!.current.name}');
        setState(() {
          activeIndex = widget.tabsRouter!.activeIndex;
        });
      });
    }
    super.initState();
  }

  List<Widget>? getActions(BuildContext context) {
    if (!widget.isMainRoute) return null;
    final currentRoute = AnjuRoutes.values[activeIndex];
    // TODO-WIP: Finish when design UI is completed (FIGMA)
    switch (currentRoute) {
      case AnjuRoutes.shopping:
        // TODO: Handle this case.
        return [icon];
      case AnjuRoutes.pdfpatrons:
        return null;
      case AnjuRoutes.orders:
        // TODO: Handle this case.
        return null;
      case AnjuRoutes.inventory:
        // TODO: Handle this case.
        return [
          IconButton(onPressed: getIt<AnjuRouteCubit>().addMaterial, icon: icon)
        ];
      case AnjuRoutes.wallet:
        // TODO: Handle this case.
        return null;
    }
  }

  @override
  void dispose() {
    // tabsRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // * remove color when scrolling
      surfaceTintColor: Colors.transparent,
      actions: widget.actions ?? getActions(context),
      backgroundColor: AnjuColors.primary,
      title: Image.asset(AnjuImages.logo, height: getHeight(context)),
      centerTitle: true,
    );
  }

  double getHeight(BuildContext context) {
    // TODO: Buscar reemplazar los media query con el get_it (obtenerlo una ves y ya)
    return MediaQuery.of(context).size.height * 0.12;
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
}
