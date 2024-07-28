// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/data/models/models.dart' as _i15;
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i3;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i6;
import 'package:anju/interface/views/home/home_screen.dart' as _i7;
import 'package:anju/interface/views/inventory/category_screen.dart' as _i4;
import 'package:anju/interface/views/inventory/consumables_manager_screen.dart'
    as _i5;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i8;
import 'package:anju/interface/views/pdf/pdf_details.dart' as _i10;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i9;
import 'package:anju/interface/views/show/amugurumi_details.dart' as _i1;
import 'package:anju/interface/views/show/show_screen.dart' as _i2;
import 'package:anju/interface/views/splash_screen.dart' as _i11;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i12;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i16;

abstract class $AnjuRouter extends _i13.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AmigurumiDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AmigurumiDetailsRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmigurumiDetailsScreen(
          key: args.key,
          amigurumi: args.amigurumi,
        ),
      );
    },
    AmigurumiShowRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AmigurumiShowScreen(),
      );
    },
    AnjuHomeLayout.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AnjuHomeLayout(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryScreen(),
      );
    },
    ConsumablesManagerRoute.name: (routeData) {
      final args = routeData.argsAs<ConsumablesManagerRouteArgs>(
          orElse: () => const ConsumablesManagerRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ConsumablesManagerScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DetailsOrderScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InventoryScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PdfPatrons(),
      );
    },
    PdfViewRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PdfViewScreen(
          key: args.key,
          path: args.path,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AmigurumiDetailsScreen]
class AmigurumiDetailsRoute
    extends _i13.PageRouteInfo<AmigurumiDetailsRouteArgs> {
  AmigurumiDetailsRoute({
    _i14.Key? key,
    required _i15.Amigurumi amigurumi,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          AmigurumiDetailsRoute.name,
          args: AmigurumiDetailsRouteArgs(
            key: key,
            amigurumi: amigurumi,
          ),
          initialChildren: children,
        );

  static const String name = 'AmigurumiDetailsRoute';

  static const _i13.PageInfo<AmigurumiDetailsRouteArgs> page =
      _i13.PageInfo<AmigurumiDetailsRouteArgs>(name);
}

class AmigurumiDetailsRouteArgs {
  const AmigurumiDetailsRouteArgs({
    this.key,
    required this.amigurumi,
  });

  final _i14.Key? key;

  final _i15.Amigurumi amigurumi;

  @override
  String toString() {
    return 'AmigurumiDetailsRouteArgs{key: $key, amigurumi: $amigurumi}';
  }
}

/// generated route for
/// [_i2.AmigurumiShowScreen]
class AmigurumiShowRoute extends _i13.PageRouteInfo<void> {
  const AmigurumiShowRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AmigurumiShowRoute.name,
          initialChildren: children,
        );

  static const String name = 'AmigurumiShowRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AnjuHomeLayout]
class AnjuHomeLayout extends _i13.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i13.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i13.PageRouteInfo<void> {
  const CategoryRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ConsumablesManagerScreen]
class ConsumablesManagerRoute
    extends _i13.PageRouteInfo<ConsumablesManagerRouteArgs> {
  ConsumablesManagerRoute({
    _i16.Key? key,
    int? id,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ConsumablesManagerRoute.name,
          args: ConsumablesManagerRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ConsumablesManagerRoute';

  static const _i13.PageInfo<ConsumablesManagerRouteArgs> page =
      _i13.PageInfo<ConsumablesManagerRouteArgs>(name);
}

class ConsumablesManagerRouteArgs {
  const ConsumablesManagerRouteArgs({
    this.key,
    this.id,
  });

  final _i16.Key? key;

  final int? id;

  @override
  String toString() {
    return 'ConsumablesManagerRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.DetailsOrderScreen]
class DetailsOrderRoute extends _i13.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.InventoryScreen]
class InventoryRoute extends _i13.PageRouteInfo<void> {
  const InventoryRoute({List<_i13.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PdfPatrons]
class PdfPatrons extends _i13.PageRouteInfo<void> {
  const PdfPatrons({List<_i13.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PdfViewScreen]
class PdfViewRoute extends _i13.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({
    _i16.Key? key,
    required String path,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PdfViewRoute.name,
          args: PdfViewRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewRoute';

  static const _i13.PageInfo<PdfViewRouteArgs> page =
      _i13.PageInfo<PdfViewRouteArgs>(name);
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({
    this.key,
    required this.path,
  });

  final _i16.Key? key;

  final String path;

  @override
  String toString() {
    return 'PdfViewRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.WalletScreen]
class WalletRoute extends _i13.PageRouteInfo<void> {
  const WalletRoute({List<_i13.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
