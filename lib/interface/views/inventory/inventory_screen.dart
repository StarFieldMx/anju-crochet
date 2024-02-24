import 'package:anju/config/utils/utils.dart';
import 'package:anju/interface/widgets/anju_carousel.dart';
// import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
// import 'package:anju/interface/widgets/inventory/categories_widgets.dart';
// import 'package:anju/interface/widgets/inventory/product_item.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra todos los materiales que ella tiene (para crochet)
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            AnjuCarousel(
                images: List.generate(
              2,
              (index) => AnjuImages.test,
            )),
          ],
        ),
      ),
    );
    // return AnjuItemListViewer(
    //   childBuilder: (p0) => const CategoryWidget(
    //     icon: Icons.category,
    //     text: 'Materiales',
    //   ),
    //   list: List.generate(10, (index) => null),
    //   title: 'Inventario',
    // );
  }
}
