import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/counter/counter.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CounterPage, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
