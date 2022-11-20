import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

import '../../cubits/index.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
    Key? key,
    required this.profileState,
  }) : super(key: key);

  final ProfileState profileState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: <Widget>[
          //I'de prefer not using padding in the middle of `Column` or `Row` due to decrease readibility
          //learn more: https://iiro.dev/putting-build-methods-on-a-diet/
          const SizedBox(height: SizeConstant.spacingSmall),
          TextFormField(
            initialValue: profileState.name,
            onChanged: context.read<ProfileCubit>().onNameChanged,
          ),
          TextFormField(
            initialValue: profileState.email,
            onChanged: context.read<ProfileCubit>().onEmailChanged,
          ),
          TextFormField(
            initialValue: '${profileState.age}',
            onChanged: context.read<ProfileCubit>().onAgeChanged,
          ),
          const SizedBox(height: SizeConstant.spacingBig),
          MyButton(
            onPressed: context.read<ProfileCubit>().updateProfile,
            title: context.l10n.updateProfile,
          ),
        ],
      ),
    );
  }
}
