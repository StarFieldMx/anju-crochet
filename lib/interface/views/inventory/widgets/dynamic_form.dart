import 'package:anju/data/models/models.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicForm extends StatefulWidget {
  const DynamicForm({super.key});

  @override
  State<DynamicForm> createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController shapeController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController thicknessController = TextEditingController();

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
          AnjuTextField(controller: thicknessController, label: 'Grosor'),
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
          // TODO: COLOR SELECTOR
        ];
        break;
      case CrochetType.filling:
        children = [
          AnjuTextField(controller: nameController, label: 'Nombre'),
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
          // TODO: ADD COLOR SELECTOR (varios)
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
