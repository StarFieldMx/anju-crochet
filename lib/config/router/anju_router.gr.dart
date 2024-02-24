// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/data/models/models.dart' as _i12;
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i3;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i4;
import 'package:anju/interface/views/home/home_screen.dart' as _i6;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i5;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i7;
import 'package:anju/interface/views/show/amugurumi_details.dart' as _i1;
import 'package:anju/interface/views/show/show_screen.dart' as _i2;
import 'package:anju/interface/views/splash_screen.dart' as _i8;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i9;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

abstract class $AnjuRouter extends _i10.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AmigurumiDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AmigurumiDetailsRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmigurumiDetailsScreen(
          key: args.key,
          amigurumi: args.amigurumi,
        ),
      );
    },
    AmigurumiShowRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AmigurumiShowScreen(),
      );
    },
    AnjuHomeLayout.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AnjuHomeLayout(),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DetailsOrderScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.InventoryScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OrdersScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PdfPatrons(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AmigurumiDetailsScreen]
class AmigurumiDetailsRoute
    extends _i10.PageRouteInfo<AmigurumiDetailsRouteArgs> {
  AmigurumiDetailsRoute({
    _i11.Key? key,
    required _i12.Amigurumi amigurumi,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AmigurumiDetailsRoute.name,
          args: AmigurumiDetailsRouteArgs(
            key: key,
            amigurumi: amigurumi,
          ),
          initialChildren: children,
        );

  static const String name = 'AmigurumiDetailsRoute';

  static const _i10.PageInfo<AmigurumiDetailsRouteArgs> page =
      _i10.PageInfo<AmigurumiDetailsRouteArgs>(name);
}

class AmigurumiDetailsRouteArgs {
  const AmigurumiDetailsRouteArgs({
    this.key,
    required this.amigurumi,
  });

  final _i11.Key? key;

  final _i12.Amigurumi amigurumi;

  @override
  String toString() {
    return 'AmigurumiDetailsRouteArgs{key: $key, amigurumi: $amigurumi}';
  }
}

/// generated route for
/// [_i2.AmigurumiShowScreen]
class AmigurumiShowRoute extends _i10.PageRouteInfo<void> {
  const AmigurumiShowRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AmigurumiShowRoute.name,
          initialChildren: children,
        );

  static const String name = 'AmigurumiShowRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AnjuHomeLayout]
class AnjuHomeLayout extends _i10.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i10.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DetailsOrderScreen]
class DetailsOrderRoute extends _i10.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.InventoryScreen]
class InventoryRoute extends _i10.PageRouteInfo<void> {
  const InventoryRoute({List<_i10.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OrdersScreen]
class OrdersRoute extends _i10.PageRouteInfo<void> {
  const OrdersRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PdfPatrons]
class PdfPatrons extends _i10.PageRouteInfo<void> {
  const PdfPatrons({List<_i10.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WalletScreen]
class WalletRoute extends _i10.PageRouteInfo<void> {
  const WalletRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
