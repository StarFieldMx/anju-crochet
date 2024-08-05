import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConsumableDetails extends StatelessWidget {
  const ConsumableDetails({super.key, required this.item});
  final Crochet item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildItemDetails(context),
    );
  }

  List<Widget> _buildItemDetails(BuildContext context) {
    List<Widget> details = [];
    final size = MediaQuery.of(context).size;
    if (item.image.value != null) {
      details.add(AnjuImage(
        imageUrl: item.image.value!.url,
        source: item.image.value!.type,
        tag: '${item.type.name}_${item.id}',
        // hero: true,
        width: size.width * 0.8,
        height: size.height * 0.2,
      ));
    }

    if (item is Yarn) {
      final yarn = item as Yarn;
      details.addAll([
        if (yarn.threadColor.value != null)
          Text(
            yarn.threadColor.value!.name,
            style: AnjuTextStyles.itemTitle,
          ),
        Text(
          'Hilo ${yarn.brand.value?.name ?? 'Sin marca'}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Grosor: ${yarn.thickness.toString()}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Estado: ${yarn.status.name}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        if (yarn.threadType.value != null)
          Text(
            'Tipo: ${yarn.threadType.value!.name}',
            style: AnjuTextStyles.descriptionConsumable,
          ),
        Text(
          'Stock: ${yarn.stock} (${yarn.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is Filling) {
      final filling = item as Filling;
      details.addAll([
        Text(
          'Disponible: ${filling.available ? 'Sí' : 'No'}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Stock: ${filling.stock} (${filling.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is SafetyEyes) {
      final eyes = item as SafetyEyes;
      details.addAll([
        Text(
          'Forma: ${eyes.shape}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Tamaño: ${eyes.size}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Stock: ${eyes.stock} (${eyes.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is Accessories) {
      details.addAll([
        Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is Keychains) {
      details.addAll([
        Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is PrePacking) {
      final prePacking = item as PrePacking;
      details.addAll([
        Text(
          'Nombre: ${prePacking.name}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Tamaño: ${prePacking.size}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Stock: ${prePacking.stock} (${prePacking.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else if (item is Hooks) {
      final hooks = item as Hooks;
      details.addAll([
        Text(
          'Grosor: ${hooks.thickness.toString()}',
          style: AnjuTextStyles.descriptionConsumable,
        ),
        Text(
          'Stock: ${hooks.stock} (${hooks.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    } else {
      details.addAll([
        Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
        ),
      ]);
    }

    return details;
  }
}
