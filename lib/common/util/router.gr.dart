// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../features/wrapper/wrapper_view.dart';

class Routes {
  static const String wrapper_view = '/';
  static const all = <String>{
    wrapper_view,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.wrapper_view, page: WrapperView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    WrapperView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const WrapperView(),
        settings: data,
      );
    },
  };
}
