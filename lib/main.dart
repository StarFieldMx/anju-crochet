import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/servicelocator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runAppAnju;

Future<void> get runAppAnju async {
  await serviceLocator();
  final bloc = MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => geit<AnjuRouteCubit>()),
    ],
    child: const Anju(),
  );
  runApp(bloc);
}

class Anju extends StatelessWidget {
  const Anju({super.key});

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
