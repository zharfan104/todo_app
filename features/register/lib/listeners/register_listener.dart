import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:register/cubit/index.dart';
import 'package:router/router.dart';

class RegisterListener {
  static void listen(BuildContext context, RegisterState state) {
    if (state.submitRegisterStatus.isHasData) {
      context.router.navigate(const TodoListRoute());
    }
    if (state.submitRegisterStatus.isError) {
      MyToast.show(context, message: state.submitRegisterStatus.message);
    }
  }
}
