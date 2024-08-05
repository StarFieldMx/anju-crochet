import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/anju_image_model.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:anju/interface/views/inventory/widgets/list_item.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class YarnByBrandScreen extends StatelessWidget {
  const YarnByBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ThreadBrand>>(
      future: getIt<ConsumablesService>().getThreadBrands(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          return AnjuItemListViewer(
            childBuilder: (brand) => GestureDetector(
              onTap: () => getIt<AnjuRouteCubit>().goYarnScreen(brand.name),
              child: ListItemInventory(
                title: brand.name,
                source: ImageSource.network,
                imageUrl: 'https://placehold.co/600x400.png',
              ),
            ),
            list: snapshot.data!,
            title: 'Hilos por marca',
          );
        }
      },
    );
  }
}
