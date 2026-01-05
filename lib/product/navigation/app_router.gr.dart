// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:architecture_template/feature/home/view/home_detail.dart'
    as _i1;
import 'package:architecture_template/feature/home/view/home_view.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.HomeDetailView]
class HomeDetailRoute extends _i3.PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    required String title,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         HomeDetailRoute.name,
         args: HomeDetailRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'HomeDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeDetailRouteArgs>();
      return _i1.HomeDetailView(title: args.title, key: args.key);
    },
  );
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({required this.title, this.key});

  final String title;

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{title: $title, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeDetailRouteArgs) return false;
    return title == other.title && key == other.key;
  }

  @override
  int get hashCode => title.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeView();
    },
  );
}
