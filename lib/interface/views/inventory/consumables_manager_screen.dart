import 'package:anju/config/servicelocator.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/views/inventory/widgets/create_crochet_material_form.dart';
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
        child: SingleChildScrollView(
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
                  if (value != null) {
                    getIt<ConsumableManagerBloc>()
                        .add(CategorySelectEvent(value));
                  }
                },
                items: CrochetType.values
                    .map(
                      (type) => DropdownMenuItem<CrochetType>(
                        value: type, // <--- Asegúrate de asignar el valor aquí
                        child: Text(type.name),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 15),
              BlocProvider(
                create: (context) => getIt<ConsumableManagerBloc>(),
                child: const CreateCrochetMaterialForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
