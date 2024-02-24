import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:anju/interface/widgets/inventory/categories_widgets.dart';
import 'package:anju/interface/widgets/inventory/product_item.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra todos los materiales que ella tiene (para crochet)
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnjuItemListViewer(
      childBuilder: (p0) => const CategoryWidget(
        icon: Icons.category,
        text: 'Materiales',
      ),
      list: List.generate(10, (index) => null),
      title: 'Inventario',
    );
  }
}
