// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anju/data/models/models.dart' as _i18;
import 'package:anju/interface/layouts/anju_home_layout.dart' as _i3;
import 'package:anju/interface/views/home/details_order_screen.dart' as _i6;
import 'package:anju/interface/views/home/home_screen.dart' as _i7;
import 'package:anju/interface/views/inventory/category_screen.dart' as _i4;
import 'package:anju/interface/views/inventory/consumables_manager_screen.dart'
    as _i5;
import 'package:anju/interface/views/inventory/inventory_screen.dart' as _i8;
import 'package:anju/interface/views/inventory/layouts/yarn_layout.dart'
    as _i14;
import 'package:anju/interface/views/inventory/yarn_by_brand_screen.dart'
    as _i13;
import 'package:anju/interface/views/inventory/yarn_screen.dart' as _i15;
import 'package:anju/interface/views/pdf/pdf_details.dart' as _i10;
import 'package:anju/interface/views/pdf/pdf_patrons_screen.dart' as _i9;
import 'package:anju/interface/views/show/amugurumi_details.dart' as _i1;
import 'package:anju/interface/views/show/show_screen.dart' as _i2;
import 'package:anju/interface/views/splash_screen.dart' as _i11;
import 'package:anju/interface/views/wallet/wallet_screen.dart' as _i12;
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/cupertino.dart' as _i17;
import 'package:flutter/material.dart' as _i19;

abstract class $AnjuRouter extends _i16.RootStackRouter {
  $AnjuRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AmigurumiDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AmigurumiDetailsRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AmigurumiDetailsScreen(
          key: args.key,
          amigurumi: args.amigurumi,
        ),
      );
    },
    AmigurumiShowRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AmigurumiShowScreen(),
      );
    },
    AnjuHomeLayout.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AnjuHomeLayout(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CategoryScreen(
          key: args.key,
          type: args.type,
        ),
      );
    },
    ConsumablesManagerRoute.name: (routeData) {
      final args = routeData.argsAs<ConsumablesManagerRouteArgs>(
          orElse: () => const ConsumablesManagerRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ConsumablesManagerScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DetailsOrderRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DetailsOrderScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    InventoryRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InventoryScreen(),
      );
    },
    PdfPatrons.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PdfPatrons(),
      );
    },
    PdfViewRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PdfViewScreen(
          key: args.key,
          path: args.path,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.WalletScreen(),
      );
    },
    YarnByBrandRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.YarnByBrandScreen(),
      );
    },
    YarnLayoutRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.YarnLayout(),
      );
    },
    YarnRoute.name: (routeData) {
      final args = routeData.argsAs<YarnRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.YarnScreen(
          key: args.key,
          brand: args.brand,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AmigurumiDetailsScreen]
class AmigurumiDetailsRoute
    extends _i16.PageRouteInfo<AmigurumiDetailsRouteArgs> {
  AmigurumiDetailsRoute({
    _i17.Key? key,
    required _i18.Amigurumi amigurumi,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AmigurumiDetailsRoute.name,
          args: AmigurumiDetailsRouteArgs(
            key: key,
            amigurumi: amigurumi,
          ),
          initialChildren: children,
        );

  static const String name = 'AmigurumiDetailsRoute';

  static const _i16.PageInfo<AmigurumiDetailsRouteArgs> page =
      _i16.PageInfo<AmigurumiDetailsRouteArgs>(name);
}

class AmigurumiDetailsRouteArgs {
  const AmigurumiDetailsRouteArgs({
    this.key,
    required this.amigurumi,
  });

  final _i17.Key? key;

  final _i18.Amigurumi amigurumi;

  @override
  String toString() {
    return 'AmigurumiDetailsRouteArgs{key: $key, amigurumi: $amigurumi}';
  }
}

/// generated route for
/// [_i2.AmigurumiShowScreen]
class AmigurumiShowRoute extends _i16.PageRouteInfo<void> {
  const AmigurumiShowRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AmigurumiShowRoute.name,
          initialChildren: children,
        );

  static const String name = 'AmigurumiShowRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AnjuHomeLayout]
class AnjuHomeLayout extends _i16.PageRouteInfo<void> {
  const AnjuHomeLayout({List<_i16.PageRouteInfo>? children})
      : super(
          AnjuHomeLayout.name,
          initialChildren: children,
        );

  static const String name = 'AnjuHomeLayout';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i16.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    _i19.Key? key,
    required _i18.CrochetType type,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i16.PageInfo<CategoryRouteArgs> page =
      _i16.PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.type,
  });

  final _i19.Key? key;

  final _i18.CrochetType type;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [_i5.ConsumablesManagerScreen]
class ConsumablesManagerRoute
    extends _i16.PageRouteInfo<ConsumablesManagerRouteArgs> {
  ConsumablesManagerRoute({
    _i19.Key? key,
    int? id,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ConsumablesManagerRoute.name,
          args: ConsumablesManagerRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ConsumablesManagerRoute';

  static const _i16.PageInfo<ConsumablesManagerRouteArgs> page =
      _i16.PageInfo<ConsumablesManagerRouteArgs>(name);
}

class ConsumablesManagerRouteArgs {
  const ConsumablesManagerRouteArgs({
    this.key,
    this.id,
  });

  final _i19.Key? key;

  final int? id;

  @override
  String toString() {
    return 'ConsumablesManagerRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.DetailsOrderScreen]
class DetailsOrderRoute extends _i16.PageRouteInfo<void> {
  const DetailsOrderRoute({List<_i16.PageRouteInfo>? children})
      : super(
          DetailsOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsOrderRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.InventoryScreen]
class InventoryRoute extends _i16.PageRouteInfo<void> {
  const InventoryRoute({List<_i16.PageRouteInfo>? children})
      : super(
          InventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'InventoryRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PdfPatrons]
class PdfPatrons extends _i16.PageRouteInfo<void> {
  const PdfPatrons({List<_i16.PageRouteInfo>? children})
      : super(
          PdfPatrons.name,
          initialChildren: children,
        );

  static const String name = 'PdfPatrons';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PdfViewScreen]
class PdfViewRoute extends _i16.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({
    _i19.Key? key,
    required String path,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          PdfViewRoute.name,
          args: PdfViewRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewRoute';

  static const _i16.PageInfo<PdfViewRouteArgs> page =
      _i16.PageInfo<PdfViewRouteArgs>(name);
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({
    this.key,
    required this.path,
  });

  final _i19.Key? key;

  final String path;

  @override
  String toString() {
    return 'PdfViewRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.WalletScreen]
class WalletRoute extends _i16.PageRouteInfo<void> {
  const WalletRoute({List<_i16.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.YarnByBrandScreen]
class YarnByBrandRoute extends _i16.PageRouteInfo<void> {
  const YarnByBrandRoute({List<_i16.PageRouteInfo>? children})
      : super(
          YarnByBrandRoute.name,
          initialChildren: children,
        );

  static const String name = 'YarnByBrandRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.YarnLayout]
class YarnLayoutRoute extends _i16.PageRouteInfo<void> {
  const YarnLayoutRoute({List<_i16.PageRouteInfo>? children})
      : super(
          YarnLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'YarnLayout';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.YarnScreen]
class YarnRoute extends _i16.PageRouteInfo<YarnRouteArgs> {
  YarnRoute({
    _i19.Key? key,
    required String brand,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          YarnRoute.name,
          args: YarnRouteArgs(
            key: key,
            brand: brand,
          ),
          initialChildren: children,
        );

  static const String name = 'YarnRoute';

  static const _i16.PageInfo<YarnRouteArgs> page =
      _i16.PageInfo<YarnRouteArgs>(name);
}

class YarnRouteArgs {
  const YarnRouteArgs({
    this.key,
    required this.brand,
  });

  final _i19.Key? key;

  final String brand;

  @override
  String toString() {
    return 'YarnRouteArgs{key: $key, brand: $brand}';
  }
}
