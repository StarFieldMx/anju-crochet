// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i1;
import 'package:anju/interface/views/home/home_screen.dart' as _i2;
import 'package:anju/interface/views/home/pedidos_screen.dart' as _i5;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i3;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i4;
import 'package:anju/interface/views/shop/shopping_screen.dart' as _i6;
import 'package:anju/interface/views/splash_screen.dart' as _i7;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i8;
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

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
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InventoryScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PdfPatrons(),
      );
    },
    PedidosRoute.name: (routeData) {
      final args = routeData.argsAs<PedidosRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PedidosScreen(
          key: args.key,
          heroId: args.id,
        ),
      );
    },
    ShoppingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShoppingScreen(),
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
/// [_i2.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

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
/// [_i4.PdfPatrons]
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
/// [_i5.PedidosScreen]
class PedidosRoute extends _i9.PageRouteInfo<PedidosRouteArgs> {
  PedidosRoute({
    _i10.Key? key,
    required int id,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PedidosRoute.name,
          args: PedidosRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'PedidosRoute';

  static const _i9.PageInfo<PedidosRouteArgs> page =
      _i9.PageInfo<PedidosRouteArgs>(name);
}

class PedidosRouteArgs {
  const PedidosRouteArgs({
    this.key,
    required this.id,
  });

  final _i10.Key? key;

  final int id;

  @override
  String toString() {
    return 'PedidosRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.ShoppingScreen]
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
