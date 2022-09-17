import 'package:flutter/material.dart';

class ErrorTextBanner extends StatelessWidget {
  const ErrorTextBanner({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.red,
      child: Text(text ?? ''),
    ));
  }
}
