import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.onChanged,
    this.initialValue,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final String? initialValue;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}
