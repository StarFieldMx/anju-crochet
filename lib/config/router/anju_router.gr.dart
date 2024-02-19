// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i1;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i2;
import 'package:anju/interface/views/home/home_screen.dart' as _i4;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i3;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i5;
import 'package:anju/interface/views/show/show_screen.dart' as _i6;
import 'package:anju/interface/views/splash_screen.dart' as _i7;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i8;
import 'package:auto_route/auto_route.dart' as _i9;

abstract class $AnjuRouter extends _i9.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AnjuHomeLayout.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnjuHomeLayout(),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DetailsOrderScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InventoryScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OrdersScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PdfPatrons(),
      );
    },
    ShoppingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AmigurumiShowScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnjuHomeLayout]
class AnjuHomeLayout extends _i9.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i9.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailsOrderScreen]
class DetailsOrderRoute extends _i9.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InventoryScreen]
class InventoryRoute extends _i9.PageRouteInfo<void> {
  const InventoryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OrdersScreen]
class OrdersRoute extends _i9.PageRouteInfo<void> {
  const OrdersRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PdfPatrons]
class PdfPatrons extends _i9.PageRouteInfo<void> {
  const PdfPatrons({List<_i9.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AmigurumiShowScreen]
class ShoppingRoute extends _i9.PageRouteInfo<void> {
  const ShoppingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ShoppingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WalletScreen]
class WalletRoute extends _i9.PageRouteInfo<void> {
  const WalletRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
