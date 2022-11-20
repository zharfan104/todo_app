import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'package:register/cubit/index.dart';

class SubmitRegisterButton extends StatelessWidget {
  const SubmitRegisterButton({
    super.key,
    required this.isLoginDataValid,
  });

  final bool isLoginDataValid;

  @override
  Widget build(BuildContext context) {
    return MyButton(
      title: 'Register',
      onPressed: isLoginDataValid
          ? context.read<RegisterCubit>().onClickRegisterButton
          : null,
    );
  }
}
