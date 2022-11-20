import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubit/index.dart';
import '../listeners/index.dart';
import '../repositories/index.dart';
import 'widgets/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: const MyAppBar(title: 'Register'),
      body: BlocProvider(
        create: (context) =>
            RegisterCubit(registerRepository: RegisterRepositoryImpl()),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: RegisterListener.listen,
          builder: (context, state) {
            if (state.submitRegisterStatus.isLoading) {
              return const MyLoadingIndicator();
            }

            return const RegisterForm();
          },
        ),
      ),
    );
  }
}
