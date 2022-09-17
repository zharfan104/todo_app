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
        routeData: routeData,
        child: const TodoListPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          TodoListRoute.name,
          path: '/',
        ),
        RouteConfig(
          ProfileRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [TodoListPage]
class TodoListRoute extends PageRouteInfo<void> {
  const TodoListRoute()
      : super(
          TodoListRoute.name,
          path: '/',
        );

  static const String name = 'TodoListRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/',
        );

  static const String name = 'ProfileRoute';
}
