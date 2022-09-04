import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:profile/pages/profile_page.dart';
import 'package:todo_list/pages/todo_list_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: TodoListPage, initial: true),
    AutoRoute(page: ProfilePage, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
