import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubit/index.dart';

class SubmitLoginButton extends StatelessWidget {
  const SubmitLoginButton({
    Key? key,
    required this.isLoginDataValid,
  }) : super(key: key);

  final bool isLoginDataValid;

  @override
  Widget build(BuildContext context) {
    return MyButton(
      title: 'Login',
      onPressed: isLoginDataValid ? context.read<LoginCubit>().onClickLoginButton : null,
    );
  }
}
