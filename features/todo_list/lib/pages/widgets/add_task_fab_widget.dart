import 'package:flutter/material.dart';

class AddTaskFABWidget extends StatelessWidget {
  const AddTaskFABWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      focusElevation: 5,
      child: const Icon(Icons.edit),
    );
  }
}
