import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:login/listeners/index.dart';
import 'package:login/repositories/index.dart';

import '../cubit/index.dart';
import 'widgets/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: const MyAppBar(title: 'Login'),
      body: BlocProvider(
        create: (context) => LoginCubit(loginRepository: LoginRepositoryImpl()),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: LoginListener.listen,
          builder: (context, state) {
            if (state.submitLoginStatus.isLoading) {
              return const MyLoadingIndicator();
            }

            return const LoginForm();
          },
        ),
      ),
    );
  }
}
