import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()

/// Muestra todos los materiales que ella tiene (para crochet)
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inventory'),
    );
  }
}
