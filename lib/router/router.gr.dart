// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TodoListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TodoListPage());
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(TodoListRoute.name, path: '/')];
}

/// generated route for
/// [TodoListPage]
class TodoListRoute extends PageRouteInfo<void> {
  const TodoListRoute() : super(TodoListRoute.name, path: '/');

  static const String name = 'TodoListRoute';
}
