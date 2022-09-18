import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart';

import '../cubits/index.dart';

class LogoutListener {
  static void listen(BuildContext context, LogoutState state) {
    if (state.submitLogoutStatus.isHasData) {
      context.router.push(const LoginRoute());
    }
  }
}
