import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.account_circle_outlined),
      onPressed: () => context.router.push(const ProfileRoute()),
    );
  }
}
