// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/data/models/models.dart' as _i13;
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i3;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i4;
import 'package:anju/interface/views/home/home_screen.dart' as _i6;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i5;
import 'package:anju/interface/views/pdf/pdf_details.dart' as _i8;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i7;
import 'package:anju/interface/views/show/amugurumi_details.dart' as _i1;
import 'package:anju/interface/views/show/show_screen.dart' as _i2;
import 'package:anju/interface/views/splash_screen.dart' as _i9;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i10;
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:flutter/material.dart' as _i14;

abstract class $AnjuRouter extends _i11.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AmigurumiDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AmigurumiDetailsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmigurumiDetailsScreen(
          key: args.key,
          amigurumi: args.amigurumi,
        ),
      );
    },
    AmigurumiShowRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AmigurumiShowScreen(),
      );
    },
    AnjuHomeLayout.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AnjuHomeLayout(),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DetailsOrderScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.InventoryScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OrdersScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PdfPatrons(),
      );
    },
    PdfViewRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PdfViewScreen(
          key: args.key,
          path: args.path,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AmigurumiDetailsScreen]
class AmigurumiDetailsRoute
    extends _i11.PageRouteInfo<AmigurumiDetailsRouteArgs> {
  AmigurumiDetailsRoute({
    _i12.Key? key,
    required _i13.Amigurumi amigurumi,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AmigurumiDetailsRoute.name,
          args: AmigurumiDetailsRouteArgs(
            key: key,
            amigurumi: amigurumi,
          ),
          initialChildren: children,
        );

  static const String name = 'AmigurumiDetailsRoute';

  static const _i11.PageInfo<AmigurumiDetailsRouteArgs> page =
      _i11.PageInfo<AmigurumiDetailsRouteArgs>(name);
}

class AmigurumiDetailsRouteArgs {
  const AmigurumiDetailsRouteArgs({
    this.key,
    required this.amigurumi,
  });

  final _i12.Key? key;

  final _i13.Amigurumi amigurumi;

  @override
  String toString() {
    return 'AmigurumiDetailsRouteArgs{key: $key, amigurumi: $amigurumi}';
  }
}

/// generated route for
/// [_i2.AmigurumiShowScreen]
class AmigurumiShowRoute extends _i11.PageRouteInfo<void> {
  const AmigurumiShowRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AmigurumiShowRoute.name,
          initialChildren: children,
        );

  static const String name = 'AmigurumiShowRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AnjuHomeLayout]
class AnjuHomeLayout extends _i11.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i11.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DetailsOrderScreen]
class DetailsOrderRoute extends _i11.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.InventoryScreen]
class InventoryRoute extends _i11.PageRouteInfo<void> {
  const InventoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OrdersScreen]
class OrdersRoute extends _i11.PageRouteInfo<void> {
  const OrdersRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PdfPatrons]
class PdfPatrons extends _i11.PageRouteInfo<void> {
  const PdfPatrons({List<_i11.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PdfViewScreen]
class PdfViewRoute extends _i11.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({
    _i14.Key? key,
    required String path,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          PdfViewRoute.name,
          args: PdfViewRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewRoute';

  static const _i11.PageInfo<PdfViewRouteArgs> page =
      _i11.PageInfo<PdfViewRouteArgs>(name);
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({
    this.key,
    required this.path,
  });

  final _i14.Key? key;

  final String path;

  @override
  String toString() {
    return 'PdfViewRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i9.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WalletScreen]
class WalletRoute extends _i11.PageRouteInfo<void> {
  const WalletRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
