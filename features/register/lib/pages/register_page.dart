import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:register/cubit/index.dart';
import 'package:register/listeners/index.dart';
import 'package:register/pages/widgets/index.dart';
import 'package:register/repositories/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
