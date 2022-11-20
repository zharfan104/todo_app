import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:register/cubit/index.dart';
import 'package:register/pages/widgets/submit_register_button.dart';
import 'package:resources/resources.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = context.l10n;

    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(SizeConstant.spacingMedium),
          child: Column(
            children: <Widget>[
              // I'de prefer not using padding in the middle of `Column`
              // or `Row` due to decrease readibility
              // learn more: https://iiro.dev/putting-build-methods-on-a-diet/
              const SizedBox(height: SizeConstant.spacingSmall),
              MyTextField(
                initialValue: state.name,
                labelText: localization.nameLabel,
                hintText: localization.nameHint,
                onChanged: context.read<RegisterCubit>().onNameChanged,
              ),
              MyTextField(
                initialValue: (state.age ?? '').toString(),
                labelText: localization.ageLabel,
                hintText: localization.ageHint,
                onChanged: context.read<RegisterCubit>().onAgeChanged,
              ),
              MyTextField(
                initialValue: state.email,
                labelText: localization.emailLabel,
                hintText: localization.emailHint,
                onChanged: context.read<RegisterCubit>().onEmailChanged,
              ),
              MyTextField(
                initialValue: state.password,
                labelText: localization.passwordLabel,
                hintText: localization.passwordHint,
                onChanged: context.read<RegisterCubit>().onPasswordChanged,
              ),
              const SizedBox(height: SizeConstant.spacingBig),
              SubmitRegisterButton(isLoginDataValid: state.isRegisterDataValid),
            ],
          ),
        );
      },
    );
  }
}
