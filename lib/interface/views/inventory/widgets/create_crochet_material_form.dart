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
  // late final TextEditingController _quantityController;
  // late final TextEditingController _purchasePriceController;
  late final TextEditingController _shapeController;
  late final TextEditingController _sizeController;
  late final TextEditingController _thicknessController;

  ThreadStatus threadStatus = ThreadStatus.nuevo;
  UnitWeight unit = UnitWeight.gr;
  ThreadBrand? brand;
  ThreadColor? threadColor;
  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(text: widget.material?.name);
    _thicknessController = TextEditingController(
        text: widget.material is Thread
            ? (widget.material as Thread).thickness.toString()
            : '');
    _shapeController = TextEditingController(
        text: widget.material is SafetyEyes
            ? (widget.material as SafetyEyes).shape
            : '');
    _sizeController = TextEditingController(
        text: widget.material is SafetyEyes
            ? (widget.material as SafetyEyes).size
            : '');
    if (widget.material is Thread) {
      threadStatus = (widget.material as Thread).status;
      unit = (widget.material as Thread).unit;
      (widget.material as Thread).thickness;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _shapeController.dispose();
    _sizeController.dispose();
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

  Widget buildFormForType(ConsumableManagerState state) {
    final formFields = _buildFormFields(state);

    return Column(
      children: [
        ...formFields,
        AnjuAddButton(onTap: () {
          // TODO:Handle form submission
          // TODO: add alerts
          if (_nameController.text.isEmpty) return;
          final consumable =
              _createConsumableFromForm(state as ConsumableManagerChoose);
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
          // TODO: IMPLEMENT
          AnjuDropDown<ThreadBrand>(
              hintText: 'Marca',
              // value: UnitWeight.gr,
              onChange: (value) {
                setState(() {
                  brand = value;
                });
              },
              value: brand ?? myState.brands.last,
              items: [
                ...myState.brands.map((brand) => DropdownMenuItem<ThreadBrand>(
                      // TODO: IMPLEMENT SELECTION OF BRAND
                      onTap: () {},
                      value: brand,
                      child: Text(brand.name),
                    )),
                DropdownMenuItem<ThreadBrand>(
                  value: ThreadBrand()
                    ..id = 0
                    ..name = 'Agregar nueva marca',
                  child: ListTile(
                    leading: Icon(
                      Icons.add,
                      color: AnjuColors.primary,
                    ),
                    title: const Text('Agregar nueva marca'),
                    onTap: AnjuAlerts.addThreadBrand,
                  ),
                ),
              ]),
          const SizedBox(height: 30),
          AnjuTextField(
            controller: _thicknessController,
            label: 'Grosor (mm)',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          AnjuDropDown<ThreadStatus>(
            hintText: 'Estado del hilo',
            value: ThreadStatus.nuevo,
            onChange: (value) {
              setState(() {
                if (value == null) return;
                threadStatus = value;
              });
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
          const SizedBox(height: 30),
        ];
      case CrochetType.filling:
        return [
          ..._buildCommonFields(),
          const SizedBox(height: 15),
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
        return _buildCommonFields();
      case CrochetType.keychains:
        return _buildCommonFields();
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
        value: UnitWeight.gr,
        onChange: (value) {
          setState(() {
            if (value == null) return;
            unit = value;
          });
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
      const SizedBox(height: 30),
    ];
  }

  Crochet? _createConsumableFromForm(ConsumableManagerChoose state) {
    switch (state.type) {
      case CrochetType.thread:
        if (brand == null) {
          // TODO: CHANGE WITH AND ALERT
          throw Exception('No brand selected');
        }
        return Thread()
              ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..brand.value = brand
              ..status = threadStatus
              ..type = CrochetType.thread
              ..thickness = double.parse(_thicknessController.text)
            // TODO: ..threadType = threadTpye // esta mal debes agregarlo como dice ISAR para los IsarLinks
            // TODO: ..threadColor = threadColor! // esta mal debes agregarlo como dice ISAR para los IsarLinks
            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      case CrochetType.filling:
        return Filling()
              ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..type = CrochetType.filling
            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      case CrochetType.safetyEyes:
        return SafetyEyes()
              ..name = _nameController.text
              ..shape = _shapeController.text
              ..size = _sizeController.text
              ..stock = 0
              ..unit = unit
              ..type = CrochetType.safetyEyes

            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      case CrochetType.accessories:
        return Accessories()
              ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..type = CrochetType.accessories

            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      case CrochetType.keychains:
        return Keychains()
              ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..type = CrochetType.keychains
            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      case CrochetType.prepacking:
        return PrePacking()
              ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..type = CrochetType.prepacking
            // ..purchasePrice = 0.0
            // Add additional properties as needed
            ;
      default:
        return null;
    }
  }
}
