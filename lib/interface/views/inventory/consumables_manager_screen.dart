import 'package:anju/config/servicelocator.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/widgets/forms/anju_add_button.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ConsumablesManagerScreen extends StatelessWidget {
  const ConsumablesManagerScreen({super.key, this.id});
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nuevo producto',
                style: AnjuTextStyles.titleScreens,
                // textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 20),
            AnjuDropDown<CrochetType>(
              hintText: 'Categoría',
              onChange: (value) {
                print(value);
              },
              items: CrochetType.values
                  .map(
                    (type) => DropdownMenuItem<CrochetType>(
                      value: type, // <--- Asegúrate de asignar el valor aquí
                      child: Text(type.name),
                    ),
                  )
                  .toList(),
              value: CrochetType.values
                  .first, // <--- Asegúrate de que el valor esté en la lista de elementos
            ),
            BlocProvider(
              create: (context) => getIt<ConsumableManagerBloc>(),
              child: const DynamicForm(),
            ),
          ],
        ),
      ),
    );
  }
}

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
          switch (state.type) {
            case CrochetType.thread:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                  AnjuTextField(
                      controller: thicknessController, label: 'Grosor'),
                  // AGREGAR MARCAS (from db)
                  AnjuDropDown<CrochetType>(
                    hintText: 'Marca',
                    onChange: (value) {
                      print(value);
                    },
                    items: CrochetType.values
                        .map(
                          (type) => DropdownMenuItem<CrochetType>(
                            child: Text(type.name),
                          ),
                        )
                        .toList(),
                  ),
                  // TODO: COLOR SELECTOR
                  AnjuAddButton(
                    onTap: () {},
                  ),
                ],
              );
            case CrochetType.filling:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                ],
              );
            case CrochetType.safetyEyes:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                  AnjuTextField(controller: shapeController, label: 'Forma'),
                  AnjuTextField(
                    controller: sizeController,
                    label: 'Tamaño',
                    keyboardType: TextInputType.number,
                  ),
                ],
              );
            case CrochetType.accessories:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                  // TODO: ADD COLOR SELECTOR (varios)
                ],
              );
            case CrochetType.keychains:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                  // TODO: ADD COLOR SELECTOR (varios)
                ],
              );
            case CrochetType.prepacking:
              return Column(
                children: [
                  AnjuTextField(controller: nameController, label: 'Nombre'),
                ],
              );
          }
        }
        return Container();
      },
    );
  }
}
