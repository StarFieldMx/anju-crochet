import 'package:anju/config/service_locator.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
import 'package:anju/data/services/anju_alerts.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/widgets/anju_add_color.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:anju/interface/widgets/widgets.dart';
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
  late final TextEditingController _shapeController;
  late final TextEditingController _sizeController;
  late final TextEditingController _thicknessController;

  /// For prepacking only
  late final TextEditingController _nameController;

  ThreadStatus threadStatus = ThreadStatus.nuevo;
  UnitWeight unit = UnitWeight.gr;
  ThreadBrand? brand;
  ThreadType? threadType;
  final List<ThreadColor> threadColors =
      List<ThreadColor>.empty(growable: true);

  @override
  void initState() {
    super.initState();

    // _nameController = TextEditingController(text: widget.material?.name);
    _thicknessController = TextEditingController(
      text: widget.material is Yarn
          ? (widget.material as Yarn).thickness.toString()
          : widget.material is Hooks
              ? (widget.material as Hooks).thickness.toString()
              : '',
    );
    _shapeController = TextEditingController(
      text: widget.material is SafetyEyes
          ? (widget.material as SafetyEyes).shape
          : '',
    );

    _nameController = TextEditingController(
      text: widget.material is PrePacking
          ? (widget.material as PrePacking).name
          : '',
    );
    _sizeController = TextEditingController(
      text: widget.material is SafetyEyes
          ? (widget.material as SafetyEyes).size.toString()
          : '',
    );

    if (widget.material is Yarn) {
      threadStatus = (widget.material as Yarn).status;
      unit = (widget.material as Yarn).unit;
    }
  }

  @override
  void dispose() {
    _shapeController.dispose();
    _sizeController.dispose();
    _thicknessController.dispose();
    getIt<ConsumableManagerBloc>().add(const ResetEvent());
    threadColors.clear();
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
          if (state.type
              case CrochetType.yarn ||
                  CrochetType.safetyEyes ||
                  CrochetType.accessories ||
                  CrochetType.keychains) {
            if (threadColors.isEmpty) {
              await AnjuAlerts.missingField(
                  text: 'Se te olvido agregar el color.');
              return;
            }
          }
          if (state.type == CrochetType.yarn) {
            if (_thicknessController.text.isEmpty) {
              await AnjuAlerts.missingField(
                  text: 'Se te olvido agregar el grosor del hilo.');
              return;
            }
            if (threadType == null) {
              await AnjuAlerts.missingField(
                  text: 'No agregaste el estilo o tipo del hilo.');
              return;
            }
            if (brand == null) {
              await AnjuAlerts.missingField(
                  text: 'Se te olvido seleccionar la marca del hilo.');
              return;
            }
          }
          if (state.type == CrochetType.safetyEyes) {
            if (_shapeController.text.isEmpty) {
              await AnjuAlerts.missingField(
                  text:
                      'Se te olvido agregar la forma de los ojos de seguridad.');
              return;
            }
            if (_sizeController.text.isEmpty) {
              await AnjuAlerts.missingField(
                  text: 'Se te olvido agregar el tamaño.');
              return;
            }
          }
          if (state.type == CrochetType.safetyEyes &&
              _sizeController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text:
                    'Se te olvido agregar el tamaño de los ojos de seguridad.');
            return;
          }

          if (state.type == CrochetType.hooks &&
              _thicknessController.text.isEmpty) {
            await AnjuAlerts.missingField(
                text: 'Se te olvido agregar el grosor del gancho.');
            return;
          }

          final consumable = _createConsumableFromForm(state);
          if (consumable != null) {
            getIt<ConsumablesService>().createOrUpdateConsumable(consumable,
                colors: threadColors, threadType: threadType);
            await AnjuAlerts.alertSuccess(
                text: 'Producto agregado correctamente, eso!');
            Navigator.of(context).pop();
          }
        }),
      ],
    );
  }

  List<Widget> _buildFormFields(ConsumableManagerChoose state) {
    // final state = (state as ConsumableManagerChoose);
    switch (state.type) {
      case CrochetType.yarn:
        return [
          ..._buildCommonFields(),
          AnjuDropDown<ThreadBrand>(
            hintText: 'Marca',
            onChange: (value) {
              setState(() {
                brand = value;
              });
            },
            // value: state.brands.isNotEmpty ? state.brands.first : brand,
            items: [
              ...state.brands.map((brand) => DropdownMenuItem<ThreadBrand>(
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
          const SizedBox(height: 15),
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
          AnjuDropDown<ThreadType>(
            hintText: 'Tipo de hilo',
            onChange: (value) {
              setState(() {
                threadType = value;
              });
            },
            // value: state.threadTypes.isNotEmpty
            //     ? state.threadTypes.first
            //     : threadType,
            items: [
              ...state.threadTypes.map((type) => DropdownMenuItem<ThreadType>(
                    value: type,
                    child: Text(type.name),
                  )),
              DropdownMenuItem<ThreadType>(
                value: ThreadType()
                  ..id = 0
                  ..name = 'Agregar tipo de hilo',
                child: ListTile(
                  leading: Icon(Icons.add, color: AnjuColors.primary),
                  title: const Text('Agregar nuevo hilo'),
                  onTap: AnjuAlerts.addThreadType,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          ...addColor(state),
        ];
      case CrochetType.safetyEyes:
        return [
          ..._buildCommonFields(),
          AnjuTextField(controller: _shapeController, label: 'Forma'),
          AnjuTextField(
            controller: _sizeController,
            label: 'Tamaño',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 15),
          const SizedBox(height: 15),
          ...addColor(state),
        ];
      case CrochetType.hooks:
        return [
          ..._buildCommonFields(),
          AnjuTextField(
              controller: _thicknessController, label: 'Grosor (${unit.name})'),
        ];
      case CrochetType.prepacking:
        // case CrochetType.hooks:
        return [
          ..._buildCommonFields(),
          AnjuTextField(controller: _nameController, label: 'Nombre'),
          AnjuTextField(controller: _sizeController, label: 'Tamaño (cm x cm)'),
        ];
      case CrochetType.accessories:
      case CrochetType.keychains:
        return [
          ..._buildCommonFields(),
          const SizedBox(height: 15),
          ...addColor(state),
        ];
      default:
        return [];
    }
  }

  List<Widget> _buildCommonFields() {
    return [
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
      case CrochetType.yarn:
        return Yarn()
              // ..name = _nameController.text
              ..stock = 0
              ..unit = unit
              ..brand.value = brand
              ..status = threadStatus
              ..type = CrochetType.yarn
              ..thickness = int.parse(_thicknessController.text)
            // ..threadColor
            // ..threadType
            ;
      case CrochetType.safetyEyes:
        return SafetyEyes()
          // ..name = _nameController.text
          ..shape = _shapeController.text
          ..size = int.parse(_sizeController.text)
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.safetyEyes;
      case CrochetType.accessories:
        return Accessories()
          // ..name = _nameController.text
          ..stock = 0
          ..unit = unit == UnitWeight.gr ? UnitWeight.pza : unit
          ..type = CrochetType.accessories;
      // TODO: ADD CUSTOM COLORS
      case CrochetType.keychains:
        return Keychains()
          // ..name = _nameController.text
          ..stock = 0
          ..unit = unit == UnitWeight.gr ? UnitWeight.pza : unit
          ..type = CrochetType.keychains;
      // TODO: ADD CUSTOM COLORS
      // ..color = Colors.amber.toHex();
      case CrochetType.prepacking:
        return PrePacking()
          // ..name = _nameController.text
          ..stock = 0
          ..unit = UnitWeight.cm
          ..type = CrochetType.prepacking
          ..size = int.parse(_sizeController.text)
          ..name = _nameController.text;
      case CrochetType.hooks:
        return Hooks()
          // ..name = _nameController.text
          ..stock = 0
          ..unit = unit
          ..type = CrochetType.hooks
          ..thickness = int.parse(_thicknessController.text);
      default:
        return null;
    }
  }

  List<Widget> addColor(ConsumableManagerChoose state) {
    if (state.threadColors.isNotEmpty) {
      return [
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 80),
          child: ListView.builder(
            itemCount: state.threadColors.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.5),
                child: AnjuColorCircle(
                  onTap: (p0) {
                    final threadColor = p0[0];
                    if (threadColors.contains(threadColor)) {
                      threadColors.remove(threadColor);
                      return;
                    }
                    threadColors.add(threadColor);
                  },
                  size: 60,
                  colors: [state.threadColors[index]],
                ),
              );
            },
          ),
        ),
        AnjuAddColor(
          onSelectCOlor: (ThreadColor? color) {
            setState(() {
              if (color == null) return;
              getIt<ConsumableManagerBloc>().add(AddThreadColorEvent(color));
            });
          },
        ),
      ];
    }
    return [];
  }
}
