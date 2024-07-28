import 'package:anju/config/router/anju_router.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> serviceLocator() async {
  getIt.registerSingleton(AnjuRouteCubit());
  getIt.registerSingleton(ConsumableManagerBloc());
}
