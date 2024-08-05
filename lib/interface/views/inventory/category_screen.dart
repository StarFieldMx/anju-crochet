import 'package:anju/config/service_locator.dart';
import 'package:anju/config/utils/extensions.dart';
import 'package:anju/data/models/anju_image_model.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/services/anju_alerts.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:anju/interface/views/inventory/widgets/list_item.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  final CrochetType type;
  const CategoryScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: FutureBuilder<List<Crochet>>(
        future: getIt<ConsumablesService>().getConsumables(type),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            return AnjuItemListViewer(
              childBuilder: (crochet) => GestureDetector(
                onTap: () => AnjuAlerts.showDetailsConsumable(crochet: crochet),
                child: _buildListItem(crochet),
              ),
              list: snapshot.data!,
              title: type.spanishPlural,
            );
          }
        },
      ),
    );
  }

  Widget _buildListItem(Crochet crochet) {
    if (crochet is SafetyEyes) {
      return ListItemInventory(
        title: crochet.threadColor.value?.name ?? crochet.shape,
        source: ImageSource.network,
        imageUrl: 'https://placehold.co/600x400.png',
      );
    } else if (crochet is Accessories) {
      return ListItemInventory(
        title: crochet.threadColor.value?.name ?? crochet.type.spanishSingle,
        source: ImageSource.network,
        imageUrl: 'https://placehold.co/600x400.png',
      );
    } else if (crochet is Keychains) {
      return ListItemInventory(
        title: crochet.threadColor.value?.name ?? crochet.type.spanishSingle,
        source: ImageSource.network,
        imageUrl: 'https://placehold.co/600x400.png',
      );
    } else if (crochet is PrePacking) {
      return ListItemInventory(
        title: crochet.name,
        source: ImageSource.network,
        imageUrl: 'https://placehold.co/600x400.png',
      );
    } else if (crochet is Hooks) {
      return ListItemInventory(
        title:
            '${crochet.type.spanishSingle} - ${crochet.thickness} (${crochet.unit.name})',
        source: ImageSource.network,
        imageUrl: 'https://placehold.co/600x400.png',
      );
    }
    return const ListTile(title: Text('Unknown Crochet Type'));
  }
}
