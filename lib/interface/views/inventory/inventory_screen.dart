import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:anju/interface/widgets/inventory/inventory_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

List<DataItem> items = [
  DataItem(Icons.category, 'Materiales'),
  DataItem(Icons.card_giftcard, 'Empaquetado')
];

@RoutePage()
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnjuItemListViewer(
        childBuilder: (p0) => InventoryItem(
          icon: Icons.category,
          text: p0.name.toUpperCase(),
          onTap: () => getIt<AnjuRouteCubit>().goCategory(type: p0),
        ),
        list: CrochetType.values,
        title: 'Inventario',
      ),
    );
  }
}
