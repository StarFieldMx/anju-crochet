import 'package:anju/config/service_locator.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:anju/interface/views/inventory/widgets/list_item.dart';
import 'package:anju/interface/widgets/anju_image.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class YarnScreen extends StatelessWidget {
  const YarnScreen({super.key, required this.brand});
  final String brand;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Yarn>>(
      future: getIt<ConsumablesService>().getYarnByBrand(brand),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          return AnjuItemListViewer(
            childBuilder: (brandItem) => GestureDetector(
              // onTap: () => getIt<AnjuRouteCubit>().goYarnScreen(brand),
              child: ListItemInventory(
                title: brandItem.threadColors.toList().colorNamed,
                source: ImageSource.network,
                imageUrl: 'https://placehold.co/600x400.png',
              ),
            ),
            list: snapshot.data!,
            title: brand,
          );
        }
      },
    );
  }
}
