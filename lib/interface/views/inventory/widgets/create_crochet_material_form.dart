import 'package:anju/data/models/models.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCrochetMaterialForm extends StatefulWidget {
  const CreateCrochetMaterialForm({super.key});

  @override
  State<CreateCrochetMaterialForm> createState() =>
      _CreateCrochetMaterialFormState();
}

class _CreateCrochetMaterialFormState extends State<CreateCrochetMaterialForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  // Ojos
  final TextEditingController shapeController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController costController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConsumableManagerBloc, ConsumableManagerState>(
      builder: (context, state) {
        if (state is ConsumableManagerChoose) {
          return buildFormForType(state.type);
        }
        return AnjuAddButton(
          onTap: () {},
        );
      },
    );
  }

  Widget buildFormForType(CrochetType type) {
    List<Widget> children;

    switch (type) {
      case CrochetType.thread:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
          AnjuTextField(
            controller: quantityController,
            label: 'Cantidad',
            keyboardType: TextInputType.number,
          ),
          AnjuTextField(
            controller: priceController,
            label: 'Precio',
            keyboardType: TextInputType.number,
          ),
          AnjuTextField(
            controller: costController,
            label: 'Precio Compra',
            keyboardType: TextInputType.number,
          ),
          AnjuDropDown<CrochetType>(
            hintText: 'Marca',
            onChange: (value) {
              print(value);
            },
            items: CrochetType.values
                .map(
                  (type) => DropdownMenuItem<CrochetType>(
                    value: type,
                    child: Text(type.name),
                  ),
                )
                .toList(),
          ),
          AnjuDropDown<ThreadStatus>(
            hintText: 'Estado del hilo',
            value: ThreadStatus.nuevo,
            onChange: (value) {
              print(value);
            },
            items: ThreadStatus.values
                .map(
                  (type) => DropdownMenuItem<ThreadStatus>(
                    value: type,
                    child: Text(type.name),
                  ),
                )
                .toList(),
          ),
          AnjuDropDown<UnitWeight>(
            hintText: 'Unidad',
            value: UnitWeight.gr,
            onChange: (value) {
              print(value);
            },
            items: UnitWeight.values
                .map(
                  (type) => DropdownMenuItem<UnitWeight>(
                    value: type,
                    child: Text(type.name),
                  ),
                )
                .toList(),
          ),
          // TODO: COLOR SELECTOR
        ];
        break;
      case CrochetType.filling:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
          Switch(
              value: false,
              onChanged: (value) {
                print(value);
              })
        ];
        break;
      case CrochetType.safetyEyes:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
          AnjuTextField(controller: shapeController, label: 'Forma'),
          AnjuTextField(
            controller: sizeController,
            label: 'Tamaño',
            keyboardType: TextInputType.number,
          ),
        ];
        break;
      case CrochetType.accessories:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
          // TODO: ADD COLOR SELECTOR (varios)
        ];
        break;
      case CrochetType.keychains:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
          // TODO: ADD COLOR SELECTOR (uno)
        ];
        break;
      case CrochetType.prepacking:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
        ];
        break;
    }

    return Column(
      children: [
        ...children,
        AnjuAddButton(
          onTap: () {},
        ),
      ],
    );
  }
}
