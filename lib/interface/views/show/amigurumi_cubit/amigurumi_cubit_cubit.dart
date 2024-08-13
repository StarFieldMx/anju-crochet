import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'amigurumi_cubit_state.dart';

class AmigurumiCubitCubit extends Cubit<AmigurumiCubitState> {
  AmigurumiCubitCubit() : super(const AmigurumiCubitState());
  // Simular la carga de datos desde una API
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  void loadOptions() async {
    // Esta lista simula lo que obtendrías de una API
    emit(state.copyWith(
        status: AmigurumiCubitStatus.loading, selectedBrand: null));
    final yarns = await getIt<ConsumablesService>().getThreadBrands();
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(
        yarnBrands: yarns, status: AmigurumiCubitStatus.success));
  }

  void retrieveMaterialsByType(CrochetType type) async {
    emit(state.copyWith(
        status: AmigurumiCubitStatus.loading, selectedBrand: null));

    final materials =
        await getIt<ConsumablesService>().getConsumables(CrochetType.yarn);
    await Future.delayed(const Duration(milliseconds: 300));

    emit(state.copyWith(
        materials: materials, status: AmigurumiCubitStatus.success));
  }

  void selectOption(ThreadBrand selectedOption) async {
    emit(state.copyWith(status: AmigurumiCubitStatus.loading));
    final yarns =
        await getIt<ConsumablesService>().getYarnByBrand(selectedOption.name);
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(
      selectedBrand: selectedOption,
      yarns: yarns,
      status: AmigurumiCubitStatus.success,
    ));
  }
}
