import 'package:anju/config/router/anju_router.gr.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

@AutoRouterConfig()
class AnjuRouter extends $AnjuRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: AnjuHomeLayout.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: InventoryRoute.page),
            AutoRoute(page: WalletRoute.page),
            AutoRoute(page: PdfPatrons.page),
            AutoRoute(page: AmigurumiShowRoute.page),
          ],
        ),
        AutoRoute(page: CategoryRoute.page),
        AutoRoute(page: DetailsOrderRoute.page),
        AutoRoute(page: PdfViewRoute.page),
        AutoRoute(page: AmigurumiDetailsRoute.page),
        AutoRoute(page: ConsumablesManagerRoute.page),
      ];
}

class AnjuRouteCubit extends Cubit<AnjuRouter> {
  AnjuRouteCubit() : super(AnjuRouter());

  void goHome() => state.push(const AnjuHomeLayout(children: [HomeRoute()]));

  void goShop() => state.push(const AnjuHomeLayout(children: [HomeRoute()]));

  void goInventory() =>
      state.push(const AnjuHomeLayout(children: [InventoryRoute()]));

  void goWallet() =>
      state.push(const AnjuHomeLayout(children: [WalletRoute()]));

  void goAdd() => state.push(const AnjuHomeLayout(children: [HomeRoute()]));

  void goHomeFromSplash() =>
      state.replace(const AnjuHomeLayout(children: [HomeRoute()]));

  void goCategory({required CrochetType type}) =>
      state.push(CategoryRoute(type: type));

  void addMaterial() => state.push(ConsumablesManagerRoute());

  BuildContext get context => state.navigatorKey.currentContext!;
}
