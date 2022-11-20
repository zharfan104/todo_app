import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubit/index.dart';

class SubmitRegisterButton extends StatelessWidget {
  const SubmitRegisterButton({
    Key? key,
    required this.isLoginDataValid,
  }) : super(key: key);

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
