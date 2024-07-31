import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnjuItemListViewer(
        childBuilder: (p0) => CategoryBasedCrochet(
          type: p0,
          onTap: () => getIt<AnjuRouteCubit>().goCategory(type: p0),
        ),
        list: CrochetType.values,
        title: 'Inventario',
      ),
    );
  }
}

class CategoryBasedCrochet extends StatelessWidget {
  const CategoryBasedCrochet(
      {super.key, required this.type, required this.onTap});
  final CrochetType type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        width: 80,
        _getIconBasedOnType(type),
        colorFilter: ColorFilter.mode(AnjuColors.primary, BlendMode.srcIn),
      ),
      title: Text(
        type.spanishPlural,
        style: const TextStyle(fontSize: 18),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: AnjuColors.primary),
      onTap: onTap,
    );
  }

  String _getIconBasedOnType(CrochetType type) {
    switch (type) {
      case CrochetType.yarn:
        return AnjuSvg.yarn;
      case CrochetType.filling:
        return AnjuSvg.filling;
      case CrochetType.safetyEyes:
        return AnjuSvg.eyes;
      case CrochetType.accessories:
        return AnjuSvg.accessory;
      case CrochetType.keychains:
        return AnjuSvg.keychains;
      case CrochetType.prepacking:
        return AnjuSvg.hooks;
      case CrochetType.hooks:
        return AnjuSvg.hooks2;
    }
  }
}
