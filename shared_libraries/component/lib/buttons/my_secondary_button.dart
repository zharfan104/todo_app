import 'package:flutter/material.dart';

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
