import 'package:anju/data/models/amigurumi.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

// TODO: REMOVE
List<Amigurumi> amigurumis = List.generate(40, (index) => Amigurumi.random());

@RoutePage()

/// Muestra muñequitos que maneja
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnjuItemListViewer<Amigurumi>(
      list: amigurumis,
      childBuilder: (amigurumi) => Card(
        child: Text(amigurumi.name),
      ),
      title: 'Amugurumi',
    );
  }
}
