import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:router/router.dart';

import '../../cubit/index.dart';
import 'submit_login_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = context.l10n;

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
                labelText: localization.emailLabel,
                hintText: localization.emailHint,
                onChanged: context.read<LoginCubit>().onEmailChanged,
              ),
              MyTextField(
                initialValue: state.password,
                labelText: localization.passwordLabel,
                hintText: localization.passwordHint,
                onChanged: context.read<LoginCubit>().onPasswordChanged,
              ),
              const SizedBox(height: SizeConstant.spacingBig),
              SubmitLoginButton(isLoginDataValid: state.isLoginDataValid),
              const SizedBox(height: SizeConstant.spacingBig),
              MySecondaryButton(
                title: 'Do not have account? click here to register',
                onPressed: () => context.router.navigate(const RegisterRoute()),
              ),
            ],
          ),
        );
      },
    );
  }
}
