import 'package:anju/interface/widgets/inventory/inventory_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

List<DataItem> items = [
  DataItem(Icons.yard_outlined, 'Hilo'),
  DataItem(Icons.cloud, 'Relleno'),
  DataItem(Icons.key, 'Llaveros')
];

@RoutePage()
class CategoryScreen extends StatelessWidget {
  // final dynamic something; // Si necesitas pasar parámetros

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categoría')),
      body: const Center(
        child: Text('Contenido de la categoría'),
      ),
    );
  }
}
