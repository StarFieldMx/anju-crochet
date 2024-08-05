import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

List<Widget> buildItemDetails(BuildContext context, Crochet item) {
  List<Widget> details = [];
  final size = MediaQuery.of(context).size;
  if (item.image.value != null) {
    details.add(AnjuImage(
      imageUrl: item.image.value!.url,
      source: item.image.value!.type,
      // tag: '${item.type.name}_${item.id}',
      width: size.width * 0.8,
      height: size.height * 0.2,
    ));
  }

  if (item is Yarn) {
    final yarn = item as Yarn;
    details.addAll([
      if (yarn.threadColors.isNotEmpty)
        ...yarn.threadColors
            .map(
              (color) => Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  color.color,
                  style: AnjuTextStyles.itemTitle,
                  textAlign: TextAlign.start,
                ),
              ),
            )
            .toList(),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Hilo ${yarn.brand.value?.name ?? 'Sin marca'}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Grosor: ${yarn.thickness.toString()}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Estado: ${yarn.status.name}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      if (yarn.threadType.value != null)
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Tipo: ${yarn.threadType.value!.name}',
            style: AnjuTextStyles.descriptionConsumable,
            textAlign: TextAlign.start,
          ),
        ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${yarn.stock} (${yarn.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is Filling) {
    final filling = item as Filling;
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Disponible: ${filling.available ? 'Sí' : 'No'}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${filling.stock} (${filling.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is SafetyEyes) {
    final eyes = item as SafetyEyes;
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Forma: ${eyes.shape}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Tamaño: ${eyes.size}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${eyes.stock} (${eyes.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is Accessories) {
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is Keychains) {
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is PrePacking) {
    final prePacking = item as PrePacking;
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Nombre: ${prePacking.name}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Tamaño: ${prePacking.size}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${prePacking.stock} (${prePacking.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else if (item is Hooks) {
    final hooks = item as Hooks;
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Grosor: ${hooks.thickness.toString()}',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${hooks.stock} (${hooks.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  } else {
    details.addAll([
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Stock: ${item.stock} (${item.unit.name})',
          style: AnjuTextStyles.descriptionConsumable,
          textAlign: TextAlign.start,
        ),
      ),
    ]);
  }
  details.add(const SizedBox(height: 20));
  return details;
}
