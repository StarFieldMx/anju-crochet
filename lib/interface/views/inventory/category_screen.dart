import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  // final dynamic something; // Si necesitas pasar parámetros
  final CrochetType type;
  const CategoryScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categoría')),
      body: FutureBuilder<List<Crochet>>(
          future: getIt<ConsumablesService>().getConsumables(type),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              snapshot.data!.map(
                  (crochet) => Text('${crochet.id} - stock: ${crochet.stock}'));
              return Column(
                children: snapshot.data!
                    .map((crochet) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                              '${crochet.threadColor.value?.name ?? 'Sin nombre :O'} - stock: ${crochet.stock}'),
                        ))
                    .toList(),
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
