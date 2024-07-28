import 'package:anju/config/router/anju_router.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> serviceLocator() async {
  getIt.registerSingleton(AnjuRouteCubit());
}
