import 'package:anju/config/router/anju_router.dart';
import 'package:get_it/get_it.dart';

GetIt geit = GetIt.instance;

Future<void> serviceLocator() async {
  geit.registerSingleton(AnjuRouteCubit());
}
