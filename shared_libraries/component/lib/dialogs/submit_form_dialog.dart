import 'package:flutter/material.dart';

class SubmitFormDialog extends StatelessWidget {
  const SubmitFormDialog({
    Key? key,
    required this.onChanged,
    required this.onSubmit,
  }) : super(key: key);

  final Function(String val) onChanged;
  final Function() onSubmit;

  static void show(
    BuildContext context, {
    required Function(String val) onChanged,
    required Function() onSubmit,
  }) =>
      showDialog(
          context: context,
          builder: (context) {
            return SubmitFormDialog(
              onChanged: onChanged,
              onSubmit: onSubmit,
            );
          });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(onChanged: onChanged),
          const SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(360, 36)),
            onPressed: onSubmit,
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
