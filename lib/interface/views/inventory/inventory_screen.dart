import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/anju_image_model.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/interface/views/inventory/widgets/list_item.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnjuItemListViewer(
        childBuilder: (p0) => GestureDetector(
          onTap: () => getIt<AnjuRouteCubit>().goCategory(type: p0),
          child: CategoryBasedCrochet(
            type: p0,
          ),
        ),
        list: CrochetType.values,
        title: 'Inventario',
      ),
    );
  }
}

class CategoryBasedCrochet extends StatelessWidget {
  const CategoryBasedCrochet({super.key, required this.type});
  final CrochetType type;
  // final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListItemInventory(
      title: type.spanishPlural,
      source: ImageSourceAnju.network,
      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
    );
  }
}

// String _getIconBasedOnType(CrochetType type) {
//   switch (type) {
//     case CrochetType.yarn:
//       return AnjuSvg.yarn;
//     case CrochetType.filling:
//       return AnjuSvg.filling;
//     case CrochetType.safetyEyes:
//       return AnjuSvg.eyes;
//     case CrochetType.accessories:
//       return AnjuSvg.accessory;
//     case CrochetType.keychains:
//       return AnjuSvg.keychains;
//     case CrochetType.prepacking:
//       return AnjuSvg.hooks;
//     case CrochetType.hooks:
//       return AnjuSvg.hooks2;
//   }
// }
