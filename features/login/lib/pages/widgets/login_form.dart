import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

import '../../cubit/index.dart';
import 'submit_login_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(SizeConstant.spacingMedium),
          child: Column(
            children: <Widget>[
              //I'de prefer not using padding in the middle of `Column` or `Row` due to decrease readibility
              //learn more: https://iiro.dev/putting-build-methods-on-a-diet/
              const SizedBox(height: SizeConstant.spacingSmall),
              MyTextField(
                initialValue: state.email,
                labelText: 'Email',
                hintText: 'Input your email here..',
                onChanged: context.read<LoginCubit>().onEmailChanged,
              ),
              MyTextField(
                initialValue: state.password,
                labelText: 'Password',
                hintText: 'Input your password here..',
                onChanged: context.read<LoginCubit>().onPasswordChanged,
              ),
              const SizedBox(height: SizeConstant.spacingBig),
              SubmitLoginButton(isLoginDataValid: state.isLoginDataValid),
            ],
          ),
        );
      },
    );
  }
}
