import 'package:anju/config/router/anju_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';

@AutoRouterConfig()
class AnjuRouter extends $AnjuRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: AnjuHomeLayout.page,
          children: [
            AutoRoute(page: OrdersRoute.page),
            AutoRoute(page: InventoryRoute.page),
            AutoRoute(page: WalletRoute.page),
            AutoRoute(page: PdfPatrons.page),
            AutoRoute(page: InventoryRoute.page),
            AutoRoute(page: AmigurumiShowRoute.page),
          ],
        ),
        AutoRoute(
          page: DetailsOrderRoute.page,
        ),
        AutoRoute(
          page: PdfViewRoute.page,
        ),
        AutoRoute(
          page: AmigurumiDetailsRoute.page,
        ),
      ];
}

class AnjuRouteCubit extends Cubit<AnjuRouter> {
  AnjuRouteCubit() : super(AnjuRouter());

  void goHome() => state.push(const AnjuHomeLayout(children: [OrdersRoute()]));

  void goShop() => state.push(const AnjuHomeLayout(children: [OrdersRoute()]));

  void goInventory() =>
      state.push(const AnjuHomeLayout(children: [InventoryRoute()]));

  void goWallet() =>
      state.push(const AnjuHomeLayout(children: [WalletRoute()]));

  void goAdd() => state.push(const AnjuHomeLayout(children: [OrdersRoute()]));

  void goHomeFromSplash() =>
      state.replace(const AnjuHomeLayout(children: [OrdersRoute()]));
}
