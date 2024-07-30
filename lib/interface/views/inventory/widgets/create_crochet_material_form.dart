import 'package:anju/config/service_locator.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/services/anju_alerts.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCrochetMaterialForm extends StatefulWidget {
  const CreateCrochetMaterialForm({super.key, this.material});
  final Crochet? material;

  @override
  State<CreateCrochetMaterialForm> createState() =>
      _CreateCrochetMaterialFormState();
}

class _CreateCrochetMaterialFormState extends State<CreateCrochetMaterialForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _shapeController;
  late final TextEditingController _sizeController;
  late final TextEditingController _thicknessController;

  ThreadStatus threadStatus = ThreadStatus.nuevo;
  UnitWeight unit = UnitWeight.gr;
  ThreadBrand? brand;
  List<ThreadColor> threadColor = [];

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(text: widget.material?.name);
    _thicknessController = TextEditingController(
      text: widget.material is Thread
          ? (widget.material as Thread).thickness.toString()
          : '',
    );
    _shapeController = TextEditingController(
      text: widget.material is SafetyEyes
          ? (widget.material as SafetyEyes).shape
          : '',
    );
    _sizeController = TextEditingController(
      text: widget.material is SafetyEyes
          ? (widget.material as SafetyEyes).size
          : '',
    );

    if (widget.material is Thread) {
      threadStatus = (widget.material as Thread).status;
      unit = (widget.material as Thread).unit;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _shapeController.dispose();
    _sizeController.dispose();
    _thicknessController.dispose();
    getIt<ConsumableManagerBloc>().add(const ResetEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConsumableManagerBloc, ConsumableManagerState>(
      builder: (context, state) {
        if (state is ConsumableManagerChoose) {
          return buildFormForType(state);
        }
        return AnjuAddButton(onTap: () {});
      },
    );
  }

  Widget buildFormForType(ConsumableManagerChoose state) {
    final formFields = _buildFormFields(state);

    return Column(
      children: [
        ...formFields,
        AnjuAddButton(onTap: () async {
          // Validación de campos
          if (_nameController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text: 'Se te olvido agregar el nombre mi amor.');
            return;
          }
          if (state.type == CrochetType.thread &&
              _thicknessController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text: 'Se te olvido agregar el grosor del hilo.');
            return;
          }
          if (state.type == CrochetType.safetyEyes &&
              _shapeController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text:
                    'Se te olvido agregar la forma de los ojos de seguridad.');
            return;
          }
          if (state.type == CrochetType.safetyEyes &&
              _sizeController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text:
                    'Se te olvido agregar el tamaño de los ojos de seguridad.');
            return;
          }
          if (state.type == CrochetType.thread && brand == null) {
            await AnjuAlerts.missingField(
                text: 'Se te olvido seleccionar la marca del hilo.');
            return;
          }

          final consumable = _createConsumableFromForm(state);
          if (consumable != null) {
            getIt<ConsumablesService>().createOrUpdateConsumable(consumable);
          }
        }),
      ],
    );
  }

  List<Widget> _buildFormFields(ConsumableManagerState state) {
    final myState = (state as ConsumableManagerChoose);
    switch (myState.type) {
      case CrochetType.thread:
        return [
          ..._buildCommonFields(),
          AnjuDropDown<ThreadBrand>(
            hintText: 'Marca',
            onChange: (value) {
              setState(() {
                brand = value;
              });
            },
            value: brand ?? myState.brands.first,
            items: [
              ...myState.brands.map((brand) => DropdownMenuItem<ThreadBrand>(
                    value: brand,
                    child: Text(brand.name),
                  )),
              DropdownMenuItem<ThreadBrand>(
                value: ThreadBrand()
                  ..id = 0
                  ..name = 'Agregar nueva marca',
                child: ListTile(
                  leading: Icon(Icons.add, color: AnjuColors.primary),
                  title: const Text('Agregar nueva marca'),
                  onTap: AnjuAlerts.addThreadBrand,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          AnjuTextField(
            controller: _thicknessController,
            label: 'Grosor (mm)',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          AnjuDropDown<ThreadStatus>(
            hintText: 'Estado del hilo',
            value: threadStatus,
            onChange: (value) {
              setState(() {
                if (value == null) return;
                threadStatus = value;
              });
            },
            items: ThreadStatus.values
                .map((status) => DropdownMenuItem<ThreadStatus>(
                      value: status,
                      child: Text(status.name),
                    ))
                .toList(),
          ),
          const SizedBox(height: 30),
        ];
      case CrochetType.safetyEyes:
        return [
          ..._buildCommonFields(),
          AnjuTextField(controller: _shapeController, label: 'Forma'),
          AnjuTextField(
            controller: _sizeController,
            label: 'Tamaño',
            keyboardType: TextInputType.number,
          ),
        ];
      case CrochetType.accessories:
      case CrochetType.keychains:
      case CrochetType.prepacking:
        return _buildCommonFields();
      default:
        return [];
    }
  }

  List<Widget> _buildCommonFields() {
    return [
      AnjuTextField(controller: _nameController, label: 'Nombre'),
      const SizedBox(height: 15),
      AnjuDropDown<UnitWeight>(
        hintText: 'Unidad',
        value: unit,
        onChange: (value) {
          setState(() {
            if (value == null) return;
            unit = value;
          });
        },
        items: UnitWeight.values
            .map((unit) => DropdownMenuItem<UnitWeight>(
                  value: unit,
                  child: Text(unit.name),
                ))
            .toList(),
      ),
      const SizedBox(height: 30),
    ];
  }

  Crochet? _createConsumableFromForm(ConsumableManagerChoose state) {
    switch (state.type) {
      case CrochetType.thread:
        return Thread()
          ..name = _nameController.text
          ..stock = 0
          ..unit = unit
          ..brand.value = brand
          ..status = threadStatus
          ..type = CrochetType.thread
          ..thickness = double.parse(_thicknessController.text);
      case CrochetType.safetyEyes:
        return SafetyEyes()
          ..name = _nameController.text
          ..shape = _shapeController.text
          ..size = _sizeController.text
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.safetyEyes;
      case CrochetType.accessories:
        return Accessories()
          ..name = _nameController.text
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.accessories;
      case CrochetType.keychains:
        return Keychains()
          ..name = _nameController.text
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.keychains;
      case CrochetType.prepacking:
        return PrePacking()
          ..name = _nameController.text
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.prepacking;
      default:
        return null;
    }
  }
}
