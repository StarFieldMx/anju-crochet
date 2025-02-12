import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/servicelocator.dart';
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
          icon: p0.icon,
          text: p0.text,
          onTap: () => getIt<AnjuRouteCubit>().goCategory(),
        ),
        list: items,
        title: 'Inventario',
      ),
    );
  }
}
