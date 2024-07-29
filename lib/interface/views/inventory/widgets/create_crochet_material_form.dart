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
  static final TextEditingController _nameController = TextEditingController();
  static final TextEditingController _quantityController =
      TextEditingController();
  static final TextEditingController _purchasePriceController =
      TextEditingController();
  static final TextEditingController _shapeController = TextEditingController();
  static final TextEditingController _sizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConsumableManagerBloc, ConsumableManagerState>(
      builder: (context, state) {
        if (state is ConsumableManagerChoose) {
          return buildFormForType(state.type);
        }
        return AnjuAddButton(onTap: () {});
      },
    );
  }

  Widget buildFormForType(CrochetType type) {
    final formFields = _formFields[type] ?? [];

    return Column(
      children: [
        ...formFields,
        AnjuAddButton(onTap: () {}),
      ],
    );
  }

  static List<Widget> buildCommonFields() {
    return [
      AnjuTextField(controller: _nameController, label: 'Nombre'),
      AnjuTextField(
        controller: _purchasePriceController,
        label: 'Precio Compra (\$)',
        keyboardType: TextInputType.number,
      ),
    ];
  }

  final Map<CrochetType, List<Widget>> _formFields = {
    CrochetType.thread: [
      ...buildCommonFields(),
      AnjuTextField(
          controller: _quantityController,
          label: 'Cantidad',
          keyboardType: TextInputType.number),
      AnjuDropDown<ThreadStatus>(
        hintText: 'Estado del hilo',
        value: ThreadStatus.nuevo,
        onChange: (value) {
          print(value);
        },
        items: ThreadStatus.values
            .map(
              (status) => DropdownMenuItem<ThreadStatus>(
                value: status,
                child: Text(status.name),
              ),
            )
            .toList(),
      ),
      const SizedBox(height: 15),
      AnjuDropDown<UnitWeight>(
        hintText: 'Unidad',
        value: UnitWeight.gr,
        onChange: (value) {
          print(value);
        },
        items: UnitWeight.values
            .map(
              (unit) => DropdownMenuItem<UnitWeight>(
                value: unit,
                child: Text(unit.name),
              ),
            )
            .toList(),
      ),
      const SizedBox(height: 15),
    ],
    CrochetType.filling: [
      AnjuTextField(
        controller: _purchasePriceController,
        label: 'Precio Compra (\$)',
        keyboardType: TextInputType.number,
      ),
      const SizedBox(height: 15),
    ],
    CrochetType.safetyEyes: [
      ...buildCommonFields(),
      AnjuTextField(controller: _shapeController, label: 'Forma'),
      AnjuTextField(
        controller: _sizeController,
        label: 'Tamaño',
        keyboardType: TextInputType.number,
      ),
    ],
    // TODO: AGREGAR LO DEL SELECTOR DE COLOR
    CrochetType.accessories: buildCommonFields(),
    // TODO: AGREGAR LO DEL SELECTOR DE COLOR
    CrochetType.keychains: buildCommonFields(),

    CrochetType.prepacking: buildCommonFields(),
  };
}
