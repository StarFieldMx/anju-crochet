import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/extensions.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/views/show/amigurumi_cubit/amigurumi_cubit_cubit.dart';
import 'package:anju/interface/widgets/anju_pick_image.dart';
import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:anju/interface/widgets/forms/forms.dart';
import 'package:anju/interface/widgets/title_screen_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewAmigurumiScreen extends StatelessWidget {
  const NewAmigurumiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => AmigurumiCubitCubit()..loadOptions(),
      child: Scaffold(
        appBar: const AnjuTopBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: BlocBuilder<AmigurumiCubitCubit, AmigurumiCubitState>(
            builder: (context, state) {
              final cubit = context.read<AmigurumiCubitCubit>();
              if (state.status == AmigurumiCubitStatus.loading) {
                return Center(
                  child: CircularProgressIndicator(
                    color: AnjuColors.primary,
                  ),
                );
              }
              return ListView(
                children: [
                  const TitleScreenWidget(
                    hasPadding: false,
                    title: 'Nuevo amigurumi',
                  ),
                  const SizedBox(height: 15),
                  AnjuPickImage(
                    onPickImage: (p0) {
                      // image = p0;
                      // setState(() {});
                    },
                  ),
                  const SizedBox(height: 15),
                  AnjuTextField(
                      controller: cubit.nameController, label: 'Nombre'),
                  AnjuTextField(
                    controller: cubit.priceController,
                    label: 'Precio',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 15),
                  AnjuDropDown<ThreadBrand>(
                    hintText: 'Marca hilo',
                    onChange: (p0) {
                      if (p0 == null) return;
                      cubit.selectOption(p0);
                    },
                    value: state.selectedBrand,
                    items: state.yarnBrands
                        .map(
                          (brand) => DropdownMenuItem<ThreadBrand>(
                            value: brand,
                            child: Text(
                              brand.name,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 30),
                  if (state.selectedBrand != null)
                    AnjuDropDown<Yarn>(
                      hintText: 'Hilo',
                      onChange: (p0) {},
                      value: null,
                      items: state.yarns
                          .map(
                            (yarn) => DropdownMenuItem<Yarn>(
                              value: yarn,
                              child: Text(
                                  '${yarn.threadColors.toList().colorNamed} - ${yarn.brand.value?.name}'),
                            ),
                          )
                          .toList(),
                    ),
                  const SizedBox(height: 30),
                  AnjuDropDown<AmigurumiAvailability>(
                    hintText: 'Disponibilidad',
                    onChange: (p0) {},
                    value: null,
                    items: AmigurumiAvailability.values
                        .map(
                          (availability) =>
                              DropdownMenuItem<AmigurumiAvailability>(
                            value: availability,
                            child: Text(availability.name),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 30),
                  AnjuDropDown<AmigurumiType>(
                    hintText: 'Tipo',
                    onChange: (p0) {},
                    value: null,
                    items: AmigurumiType.values
                        .map(
                          (value) => DropdownMenuItem<AmigurumiType>(
                            value: value,
                            child: Text(value.name),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 15),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
