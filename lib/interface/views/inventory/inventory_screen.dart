import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()

/// Muestra todos los materiales que ella tiene (para crochet)
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Inventory screen', style: AnjuTextStyles.titleScreens),
    );
  }
}
