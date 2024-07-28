// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/data/models/models.dart' as _i14;
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i3;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i5;
import 'package:anju/interface/views/home/home_screen.dart' as _i7;
import 'package:anju/interface/views/inventory/category_screen.dart' as _i4;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i6;
import 'package:anju/interface/views/pdf/pdf_details.dart' as _i9;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i8;
import 'package:anju/interface/views/show/amugurumi_details.dart' as _i1;
import 'package:anju/interface/views/show/show_screen.dart' as _i2;
import 'package:anju/interface/views/splash_screen.dart' as _i10;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i11;
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i13;
import 'package:flutter/material.dart' as _i15;

abstract class $AnjuRouter extends _i12.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AmigurumiDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AmigurumiDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmigurumiDetailsScreen(
          key: args.key,
          amigurumi: args.amigurumi,
        ),
      );
    },
    AmigurumiShowRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AmigurumiShowScreen(),
      );
    },
    AnjuHomeLayout.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AnjuHomeLayout(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryScreen(),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DetailsOrderScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.InventoryScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrdersScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PdfPatrons(),
      );
    },
    PdfViewRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PdfViewScreen(
          key: args.key,
          path: args.path,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AmigurumiDetailsScreen]
class AmigurumiDetailsRoute
    extends _i12.PageRouteInfo<AmigurumiDetailsRouteArgs> {
  AmigurumiDetailsRoute({
    _i13.Key? key,
    required _i14.Amigurumi amigurumi,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AmigurumiDetailsRoute.name,
          args: AmigurumiDetailsRouteArgs(
            key: key,
            amigurumi: amigurumi,
          ),
          initialChildren: children,
        );

  static const String name = 'AmigurumiDetailsRoute';

  static const _i12.PageInfo<AmigurumiDetailsRouteArgs> page =
      _i12.PageInfo<AmigurumiDetailsRouteArgs>(name);
}

class AmigurumiDetailsRouteArgs {
  const AmigurumiDetailsRouteArgs({
    this.key,
    required this.amigurumi,
  });

  final _i13.Key? key;

  final _i14.Amigurumi amigurumi;

  @override
  String toString() {
    return 'AmigurumiDetailsRouteArgs{key: $key, amigurumi: $amigurumi}';
  }
}

/// generated route for
/// [_i2.AmigurumiShowScreen]
class AmigurumiShowRoute extends _i12.PageRouteInfo<void> {
  const AmigurumiShowRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AmigurumiShowRoute.name,
          initialChildren: children,
        );

  static const String name = 'AmigurumiShowRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AnjuHomeLayout]
class AnjuHomeLayout extends _i12.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i12.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i12.PageRouteInfo<void> {
  const CategoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DetailsOrderScreen]
class DetailsOrderRoute extends _i12.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.InventoryScreen]
class InventoryRoute extends _i12.PageRouteInfo<void> {
  const InventoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrdersScreen]
class OrdersRoute extends _i12.PageRouteInfo<void> {
  const OrdersRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PdfPatrons]
class PdfPatrons extends _i12.PageRouteInfo<void> {
  const PdfPatrons({List<_i12.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PdfViewScreen]
class PdfViewRoute extends _i12.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({
    _i15.Key? key,
    required String path,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PdfViewRoute.name,
          args: PdfViewRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewRoute';

  static const _i12.PageInfo<PdfViewRouteArgs> page =
      _i12.PageInfo<PdfViewRouteArgs>(name);
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({
    this.key,
    required this.path,
  });

  final _i15.Key? key;

  final String path;

  @override
  String toString() {
    return 'PdfViewRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i10.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.WalletScreen]
class WalletRoute extends _i12.PageRouteInfo<void> {
  const WalletRoute({List<_i12.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
