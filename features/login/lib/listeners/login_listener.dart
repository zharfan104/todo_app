import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart';

import '../cubit/index.dart';

class LoginListener {
  static void listen(BuildContext context, LoginState state) {
    if (state.submitLoginStatus.isHasData) {
      context.router.navigate(const TodoListRoute());
    }
    if (state.submitLoginStatus.isError) {
      MyToast.show(context, message: state.submitLoginStatus.message);
    }
  }
}
