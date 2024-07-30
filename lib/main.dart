import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runAppAnju;

Future<void> get runAppAnju async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  final bloc = MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => getIt<AnjuRouteCubit>()),
      BlocProvider(create: (_) => getIt<ConsumableManagerBloc>()),
    ],
    child: const AnjuApp(),
  );
  runApp(bloc);
}

class AnjuApp extends StatelessWidget {
  const AnjuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AnjuRouteCubit, AnjuRouter, RouterConfig<UrlState>>(
      selector: (state) {
        return state.config();
      },
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Anju',
          routerConfig: state,
        );
      },
    );
  }
}
